package hooks

import (
	"bytes"
	"io"
	"net/http"
	"testing"
)

func TestExtractAPIErrorMessage_WithDataMessage(t *testing.T) {
	body := []byte(`{"status":400,"type":"https://reference.airbyte.com/reference/errors#bad-request","title":"bad-request","detail":"The request could not be understood by the server due to malformed syntax.","data":{"message":"Primary key for stream: campaign_bidding_strategy is already pre-defined."}}`)
	got := extractAPIErrorMessage(400, body)
	want := "API error (HTTP 400): Primary key for stream: campaign_bidding_strategy is already pre-defined."
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}

func TestExtractAPIErrorMessage_DetailOnly(t *testing.T) {
	body := []byte(`{"status":403,"title":"forbidden","detail":"Insufficient permissions to access this resource."}`)
	got := extractAPIErrorMessage(403, body)
	want := "API error (HTTP 403): Insufficient permissions to access this resource."
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}

func TestExtractAPIErrorMessage_TitleOnly(t *testing.T) {
	body := []byte(`{"status":500,"title":"internal-server-error"}`)
	got := extractAPIErrorMessage(500, body)
	want := "API error (HTTP 500): internal-server-error"
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}

func TestExtractAPIErrorMessage_NonJSON(t *testing.T) {
	body := []byte(`Service Unavailable`)
	got := extractAPIErrorMessage(503, body)
	want := "API error (HTTP 503): Service Unavailable"
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}

func TestExtractAPIErrorMessage_EmptyBody(t *testing.T) {
	got := extractAPIErrorMessage(400, nil)
	want := "API error (HTTP 400): empty response body"
	if got != want {
		t.Errorf("got %q, want %q", got, want)
	}
}

func TestErrorResponseHook_PassesThrough2xx(t *testing.T) {
	hook := &errorResponseHook{}
	res := &http.Response{StatusCode: 200, Body: io.NopCloser(bytes.NewReader(nil))}
	got, err := hook.AfterSuccess(AfterSuccessContext{}, res)
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	if got != res {
		t.Error("expected same response to be returned for 200")
	}
}

func TestErrorResponseHook_PassesThrough404(t *testing.T) {
	hook := &errorResponseHook{}
	res := &http.Response{StatusCode: 404, Body: io.NopCloser(bytes.NewReader(nil))}
	got, err := hook.AfterSuccess(AfterSuccessContext{}, res)
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	if got != res {
		t.Error("expected same response to be returned for 404")
	}
}

func TestErrorResponseHook_Intercepts400(t *testing.T) {
	hook := &errorResponseHook{}
	body := `{"status":400,"title":"bad-request","detail":"Bad request.","data":{"message":"Field X is invalid."}}`
	res := &http.Response{
		StatusCode: 400,
		Body:       io.NopCloser(bytes.NewBufferString(body)),
	}
	_, err := hook.AfterSuccess(AfterSuccessContext{}, res)
	if err == nil {
		t.Fatal("expected error for 400 response")
	}
	want := "API error (HTTP 400): Field X is invalid."
	if err.Error() != want {
		t.Errorf("got %q, want %q", err.Error(), want)
	}
}

func TestErrorResponseHook_Intercepts403(t *testing.T) {
	hook := &errorResponseHook{}
	body := `{"status":403,"title":"forbidden","detail":"Access denied."}`
	res := &http.Response{
		StatusCode: 403,
		Body:       io.NopCloser(bytes.NewBufferString(body)),
	}
	_, err := hook.AfterSuccess(AfterSuccessContext{}, res)
	if err == nil {
		t.Fatal("expected error for 403 response")
	}
	want := "API error (HTTP 403): Access denied."
	if err.Error() != want {
		t.Errorf("got %q, want %q", err.Error(), want)
	}
}
