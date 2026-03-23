package hooks

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
)

// errorResponseHook intercepts API error responses (HTTP 4xx/5xx) and surfaces
// the response body in the error message returned to Terraform.
//
// Without this hook, the Speakeasy-generated SDK silently drains the response
// body for certain expected error status codes (e.g. 400, 403). This causes
// the Terraform provider to display only the HTTP status line (e.g.
// "Got an unexpected response code 400") without the actual API error detail
// that would help users diagnose the problem.
//
// See: https://github.com/airbytehq/oncall/issues/11735
type errorResponseHook struct{}

var _ afterSuccessHook = (*errorResponseHook)(nil)

func (h *errorResponseHook) AfterSuccess(hookCtx AfterSuccessContext, res *http.Response) (*http.Response, error) {
	if res == nil || res.StatusCode < 400 {
		return res, nil
	}

	// Do not intercept 404 responses. Several Terraform resource operations
	// (Read, Delete) rely on receiving a 404 status code to handle "resource
	// not found" gracefully (e.g. removing the resource from Terraform state).
	if res.StatusCode == 404 {
		return res, nil
	}

	// Read the response body before the SDK can drain it.
	body, err := io.ReadAll(res.Body)
	res.Body.Close()
	if err != nil {
		return nil, fmt.Errorf("API error (HTTP %d): failed to read response body: %w", res.StatusCode, err)
	}

	// Restore the body so it remains available for any downstream processing.
	res.Body = io.NopCloser(bytes.NewReader(body))

	// Build a user-friendly error message from the response body.
	return nil, fmt.Errorf("%s", extractAPIErrorMessage(res.StatusCode, body))
}

// airbyteAPIError represents the standard Airbyte API error response format.
type airbyteAPIError struct {
	Status int    `json:"status"`
	Type   string `json:"type"`
	Title  string `json:"title"`
	Detail string `json:"detail"`
	Data   *struct {
		Message string `json:"message"`
	} `json:"data"`
}

// extractAPIErrorMessage parses the Airbyte API error response and returns a
// user-friendly error string. It prefers the most specific message available
// and falls back to the raw response body when JSON parsing fails.
func extractAPIErrorMessage(statusCode int, body []byte) string {
	if len(body) == 0 {
		return fmt.Sprintf("API error (HTTP %d): empty response body", statusCode)
	}

	var apiErr airbyteAPIError
	if err := json.Unmarshal(body, &apiErr); err != nil {
		// Not JSON or unexpected format — include raw body.
		return fmt.Sprintf("API error (HTTP %d): %s", statusCode, string(body))
	}

	// Prefer the most specific message available.
	if apiErr.Data != nil && apiErr.Data.Message != "" {
		return fmt.Sprintf("API error (HTTP %d): %s", statusCode, apiErr.Data.Message)
	}
	if apiErr.Detail != "" {
		return fmt.Sprintf("API error (HTTP %d): %s", statusCode, apiErr.Detail)
	}
	if apiErr.Title != "" {
		return fmt.Sprintf("API error (HTTP %d): %s", statusCode, apiErr.Title)
	}

	// Fallback to raw body.
	return fmt.Sprintf("API error (HTTP %d): %s", statusCode, string(body))
}
