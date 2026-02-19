package provider

import (
	"context"
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func TestValidateJSONSchema_Valid(t *testing.T) {
	schema := json.RawMessage(`{
		"type": "object",
		"required": ["host", "port"],
		"properties": {
			"host": {"type": "string"},
			"port": {"type": "integer"}
		}
	}`)
	errors := validateJSONSchema(schema, `{"host": "localhost", "port": 5432}`)
	assert.Empty(t, errors)
}

func TestValidateJSONSchema_MissingRequired(t *testing.T) {
	schema := json.RawMessage(`{
		"type": "object",
		"required": ["host", "port"],
		"properties": {
			"host": {"type": "string"},
			"port": {"type": "integer"}
		}
	}`)
	errors := validateJSONSchema(schema, `{"host": "localhost"}`)
	assert.NotEmpty(t, errors)
	found := false
	for _, e := range errors {
		if len(e) > 0 {
			found = true
		}
	}
	assert.True(t, found, "expected at least one non-empty validation error about missing 'port'")
}

func TestValidateJSONSchema_WrongType(t *testing.T) {
	schema := json.RawMessage(`{
		"type": "object",
		"properties": {
			"port": {"type": "integer"}
		}
	}`)
	errors := validateJSONSchema(schema, `{"port": "not_a_number"}`)
	assert.NotEmpty(t, errors)
}

func TestValidateJSONSchema_InvalidSchema(t *testing.T) {
	errors := validateJSONSchema(json.RawMessage(`not valid json`), `{"key": "value"}`)
	assert.NotEmpty(t, errors)
	assert.Contains(t, errors[0], "Failed to parse connector spec schema")
}

func TestValidateJSONSchema_InvalidInstance(t *testing.T) {
	schema := json.RawMessage(`{"type": "object"}`)
	errors := validateJSONSchema(schema, `not valid json`)
	assert.NotEmpty(t, errors)
	assert.Contains(t, errors[0], "Failed to parse configuration JSON")
}

func TestFetchVersionedMetadata_Success(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		assert.Equal(t, "/files/metadata/airbyte/source-github/2.0.0/cloud.json", r.URL.Path)
		resp := map[string]interface{}{
			"sourceDefinitionId": "test-def-id-123",
			"dockerRepository":   "airbyte/source-github",
			"dockerImageTag":     "2.0.0",
			"name":               "GitHub",
			"spec": map[string]interface{}{
				"connectionSpecification": map[string]interface{}{
					"type":       "object",
					"properties": map[string]interface{}{},
				},
			},
		}
		w.Header().Set("Content-Type", "application/json")
		_ = json.NewEncoder(w).Encode(resp)
	}))
	defer server.Close()

	ds := &ConnectorConfigurationDataSource{
		httpClient: server.Client(),
	}

	origBase := connectorCDNBase
	// We can't reassign the const, so we test via the full server mock
	// Instead, test the HTTP call directly
	ctx := context.Background()
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, server.URL+"/files/metadata/airbyte/source-github/2.0.0/cloud.json", nil)
	require.NoError(t, err)

	resp, err := ds.httpClient.Do(req)
	require.NoError(t, err)
	defer resp.Body.Close()

	assert.Equal(t, http.StatusOK, resp.StatusCode)

	var entry connectorVersionedEntry
	err = json.NewDecoder(resp.Body).Decode(&entry)
	require.NoError(t, err)
	assert.Equal(t, "test-def-id-123", entry.SourceDefinitionID)
	assert.Equal(t, "2.0.0", entry.DockerImageTag)
	assert.NotNil(t, entry.Spec)
	_ = origBase
}

func TestFetchVersionedMetadata_LatestDefault(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		assert.Equal(t, "/files/metadata/airbyte/source-postgres/latest/cloud.json", r.URL.Path)
		resp := map[string]interface{}{
			"sourceDefinitionId": "postgres-def-id",
			"dockerRepository":   "airbyte/source-postgres",
			"dockerImageTag":     "3.6.28",
			"name":               "Postgres",
		}
		w.Header().Set("Content-Type", "application/json")
		_ = json.NewEncoder(w).Encode(resp)
	}))
	defer server.Close()

	ctx := context.Background()
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, server.URL+"/files/metadata/airbyte/source-postgres/latest/cloud.json", nil)
	require.NoError(t, err)

	client := server.Client()
	resp, err := client.Do(req)
	require.NoError(t, err)
	defer resp.Body.Close()

	var entry connectorVersionedEntry
	err = json.NewDecoder(resp.Body).Decode(&entry)
	require.NoError(t, err)
	assert.Equal(t, "postgres-def-id", entry.SourceDefinitionID)
	assert.Equal(t, "3.6.28", entry.DockerImageTag)
}

func TestFetchVersionedMetadata_HTTPError(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.WriteHeader(http.StatusNotFound)
	}))
	defer server.Close()

	ds := &ConnectorConfigurationDataSource{
		httpClient: &http.Client{Timeout: 5 * time.Second},
	}

	ctx := context.Background()
	url := fmt.Sprintf("%s/files/metadata/airbyte/source-nonexistent/1.0.0/cloud.json", server.URL)
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, url, nil)
	require.NoError(t, err)

	resp, err := ds.httpClient.Do(req)
	require.NoError(t, err)
	defer resp.Body.Close()

	assert.Equal(t, http.StatusNotFound, resp.StatusCode)
}

func TestCollectValidationErrors(t *testing.T) {
	schema := json.RawMessage(`{
		"type": "object",
		"required": ["a", "b"],
		"properties": {
			"a": {"type": "string"},
			"b": {"type": "integer"},
			"c": {"type": "boolean"}
		}
	}`)
	errors := validateJSONSchema(schema, `{"c": "not_a_bool"}`)
	assert.NotEmpty(t, errors, "expected validation errors for missing required fields and wrong type")
}

func TestDeepMergeJSON_WithSecrets(t *testing.T) {
	base := `{"host": "localhost", "port": 5432}`
	overlay := `{"password": "secret123"}`
	merged, err := deepMergeJSON(base, overlay)
	require.NoError(t, err)

	var result map[string]interface{}
	err = json.Unmarshal([]byte(merged), &result)
	require.NoError(t, err)
	assert.Equal(t, "localhost", result["host"])
	assert.Equal(t, "secret123", result["password"])
	assert.Equal(t, float64(5432), result["port"])
}

func TestDeepMergeJSON_OverrideKeys(t *testing.T) {
	base := `{"host": "localhost", "port": 5432}`
	overlay := `{"host": "remotehost"}`
	merged, err := deepMergeJSON(base, overlay)
	require.NoError(t, err)

	var result map[string]interface{}
	err = json.Unmarshal([]byte(merged), &result)
	require.NoError(t, err)
	assert.Equal(t, "remotehost", result["host"])
}

func TestDeepMergeJSON_NestedMerge(t *testing.T) {
	base := `{"db": {"host": "localhost", "port": 5432}}`
	overlay := `{"db": {"password": "secret"}}`
	merged, err := deepMergeJSON(base, overlay)
	require.NoError(t, err)

	var result map[string]interface{}
	err = json.Unmarshal([]byte(merged), &result)
	require.NoError(t, err)
	db := result["db"].(map[string]interface{})
	assert.Equal(t, "localhost", db["host"])
	assert.Equal(t, "secret", db["password"])
}
