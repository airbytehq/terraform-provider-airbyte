package hooks

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	"github.com/airbytehq/terraform-provider-airbyte/internal/sdk/models/shared"
)

// TestTokenURLResolution verifies that the OAuth token URL resolves correctly
// for both Airbyte Cloud and self-hosted deployments.
//
// This is a regression test for https://github.com/airbytehq/terraform-provider-airbyte/issues/216
// where the combination of a default token URL starting with "/v1" and
// url.ResolveReference caused self-hosted token URLs to lose their path prefix.
func TestTokenURLResolution(t *testing.T) {
	tests := []struct {
		name             string
		baseURL          string // simulates server_url
		tokenURL         string // from SchemeClientCredentials.TokenURL
		wantTokenURLPath string // expected path the token request hits
	}{
		{
			name:             "Cloud default",
			baseURL:          "https://api.airbyte.com/v1",
			tokenURL:         "/applications/token",
			wantTokenURLPath: "/v1/applications/token",
		},
		{
			name:             "Cloud default with trailing slash",
			baseURL:          "https://api.airbyte.com/v1/",
			tokenURL:         "/applications/token",
			wantTokenURLPath: "/v1/applications/token",
		},
		{
			name:             "Self-hosted with subpath",
			baseURL:          "https://airbyte.example.com/api/public/v1/",
			tokenURL:         "/applications/token",
			wantTokenURLPath: "/api/public/v1/applications/token",
		},
		{
			name:             "Self-hosted with subpath no trailing slash",
			baseURL:          "https://airbyte.example.com/api/public/v1",
			tokenURL:         "/applications/token",
			wantTokenURLPath: "/api/public/v1/applications/token",
		},
		{
			name:             "Self-hosted at root",
			baseURL:          "https://airbyte.example.com/v1",
			tokenURL:         "/applications/token",
			wantTokenURLPath: "/v1/applications/token",
		},
		{
			name:             "Custom absolute token URL bypasses resolution",
			baseURL:          "https://api.airbyte.com/v1",
			tokenURL:         "https://auth.example.com/oauth/token",
			wantTokenURLPath: "/oauth/token",
		},
		{
			name:             "Relative token URL without leading slash",
			baseURL:          "https://airbyte.example.com/api/v1",
			tokenURL:         "applications/token",
			wantTokenURLPath: "/api/v1/applications/token",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			var receivedPath string

			// Start a test server that captures the request path and returns a valid token response.
			ts := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
				receivedPath = r.URL.Path
				w.Header().Set("Content-Type", "application/json")
				if err := json.NewEncoder(w).Encode(tokenResponse{
					AccessToken: "test-token",
					TokenType:   "Bearer",
				}); err != nil {
					http.Error(w, err.Error(), http.StatusInternalServerError)
				}
			}))
			defer ts.Close()

			hook := NewClientCredentialsHook()
			hook.client = ts.Client()

			// For absolute token URLs, point them at the test server.
			testTokenURL := tt.tokenURL
			testBaseURL := tt.baseURL
			if strings.HasPrefix(tt.tokenURL, "https://") || strings.HasPrefix(tt.tokenURL, "http://") {
				// Absolute URL: replace the host with the test server
				testTokenURL = ts.URL + tt.wantTokenURLPath
			} else {
				// Relative URL: replace the base URL host with the test server
				testBaseURL = ts.URL + stripSchemeAndHost(tt.baseURL)
			}

			creds := &credentials{
				ClientID:     "test-client",
				ClientSecret: "test-secret",
				TokenURL:     testTokenURL,
			}

			ctx := HookContext{
				BaseURL: testBaseURL,
				Context: context.Background(),
			}

			_, err := hook.doTokenRequest(ctx, creds, nil)
			if err != nil {
				t.Fatalf("doTokenRequest failed: %v", err)
			}

			if receivedPath != tt.wantTokenURLPath {
				t.Errorf("token request path = %q, want %q", receivedPath, tt.wantTokenURLPath)
			}
		})
	}
}

// TestDefaultTokenURLFromTag verifies that getCredentialsGlobal reads the correct
// default token URL from the SchemeClientCredentials struct tag.
func TestDefaultTokenURLFromTag(t *testing.T) {
	hook := NewClientCredentialsHook()

	sec := shared.Security{
		ClientCredentials: &shared.SchemeClientCredentials{
			ClientID:     "test-client",
			ClientSecret: "test-secret",
			// TokenURL left empty — should be populated from struct tag default
		},
	}

	creds, err := hook.getCredentialsGlobal(sec)
	if err != nil {
		t.Fatalf("getCredentialsGlobal failed: %v", err)
	}

	// The default should be "/applications/token" (not "/v1/applications/token").
	// This ensures url.JoinPath correctly appends it to the base URL without
	// duplicating the "/v1" prefix.
	want := "/applications/token"
	if creds.TokenURL != want {
		t.Errorf("default TokenURL = %q, want %q", creds.TokenURL, want)
	}
}

// stripSchemeAndHost returns the path portion of a URL string.
// e.g. "https://example.com/api/v1/" -> "/api/v1/"
func stripSchemeAndHost(rawURL string) string {
	// Find "://" then find the next "/"
	idx := strings.Index(rawURL, "://")
	if idx == -1 {
		return rawURL
	}
	rest := rawURL[idx+3:]
	slashIdx := strings.Index(rest, "/")
	if slashIdx == -1 {
		return "/"
	}
	return rest[slashIdx:]
}
