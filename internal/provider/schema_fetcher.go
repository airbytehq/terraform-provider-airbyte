// Schema fetcher for connector configuration validation.
// This module fetches JSON Schema from the Airbyte connector registry
// and caches schemas in-memory per plan run.

package provider

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"sync"
)

const (
	// OSSRegistryURL is the URL for the OSS connector registry
	OSSRegistryURL = "https://connectors.airbyte.com/files/registries/v0/oss_registry.json"
)

// ConnectorRegistry represents the structure of the Airbyte connector registry
type ConnectorRegistry struct {
	Sources      []ConnectorDefinition `json:"sources"`
	Destinations []ConnectorDefinition `json:"destinations"`
}

// ConnectorDefinition represents a connector in the registry
type ConnectorDefinition struct {
	Name             string          `json:"name"`
	DockerRepository string          `json:"dockerRepository"`
	DockerImageTag   string          `json:"dockerImageTag"`
	Spec             *ConnectorSpec  `json:"spec"`
}

// ConnectorSpec represents the spec section of a connector
type ConnectorSpec struct {
	ConnectionSpecification json.RawMessage `json:"connectionSpecification"`
}

// SchemaFetcher fetches and caches connector schemas
type SchemaFetcher struct {
	mu       sync.RWMutex
	registry *ConnectorRegistry
	client   *http.Client
}

// NewSchemaFetcher creates a new SchemaFetcher instance
func NewSchemaFetcher() *SchemaFetcher {
	return &SchemaFetcher{
		client: &http.Client{},
	}
}

// GetSchema fetches the JSON Schema for a connector by name and version
// connectorType should be "source" or "destination"
// connectorName is the canonical name (e.g., "postgres", "bigquery")
// connectorVersion is the docker image tag (e.g., "3.7.0")
func (sf *SchemaFetcher) GetSchema(ctx context.Context, connectorType, connectorName, connectorVersion string) (json.RawMessage, error) {
	// Ensure registry is loaded
	if err := sf.ensureRegistryLoaded(ctx); err != nil {
		return nil, fmt.Errorf("failed to load connector registry: %w", err)
	}

	sf.mu.RLock()
	defer sf.mu.RUnlock()

	var connectors []ConnectorDefinition
	switch connectorType {
	case "source":
		connectors = sf.registry.Sources
	case "destination":
		connectors = sf.registry.Destinations
	default:
		return nil, fmt.Errorf("invalid connector type: %s (must be 'source' or 'destination')", connectorType)
	}

	// Find the connector by name and version
	for _, conn := range connectors {
		if matchesConnectorName(conn, connectorName) {
			if connectorVersion == "" || connectorVersion == "latest" || conn.DockerImageTag == connectorVersion {
				if conn.Spec != nil && conn.Spec.ConnectionSpecification != nil {
					return conn.Spec.ConnectionSpecification, nil
				}
				return nil, fmt.Errorf("connector %s has no specification", connectorName)
			}
		}
	}

	return nil, fmt.Errorf("connector not found: %s/%s:%s", connectorType, connectorName, connectorVersion)
}

// matchesConnectorName checks if a connector definition matches the given name
func matchesConnectorName(conn ConnectorDefinition, name string) bool {
	// Match by name (case-insensitive)
	if equalFold(conn.Name, name) {
		return true
	}
	// Match by docker repository suffix (e.g., "airbyte/source-postgres" matches "postgres")
	expectedRepo := fmt.Sprintf("airbyte/source-%s", name)
	if equalFold(conn.DockerRepository, expectedRepo) {
		return true
	}
	expectedRepo = fmt.Sprintf("airbyte/destination-%s", name)
	return equalFold(conn.DockerRepository, expectedRepo)
}

// equalFold is a simple case-insensitive string comparison
func equalFold(a, b string) bool {
	if len(a) != len(b) {
		return false
	}
	for i := 0; i < len(a); i++ {
		ca, cb := a[i], b[i]
		if ca >= 'A' && ca <= 'Z' {
			ca += 'a' - 'A'
		}
		if cb >= 'A' && cb <= 'Z' {
			cb += 'a' - 'A'
		}
		if ca != cb {
			return false
		}
	}
	return true
}

// ensureRegistryLoaded loads the registry if not already loaded
func (sf *SchemaFetcher) ensureRegistryLoaded(ctx context.Context) error {
	sf.mu.RLock()
	if sf.registry != nil {
		sf.mu.RUnlock()
		return nil
	}
	sf.mu.RUnlock()

	sf.mu.Lock()
	defer sf.mu.Unlock()

	// Double-check after acquiring write lock
	if sf.registry != nil {
		return nil
	}

	req, err := http.NewRequestWithContext(ctx, http.MethodGet, OSSRegistryURL, nil)
	if err != nil {
		return fmt.Errorf("failed to create request: %w", err)
	}

	resp, err := sf.client.Do(req)
	if err != nil {
		return fmt.Errorf("failed to fetch registry: %w", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		return fmt.Errorf("registry returned status %d", resp.StatusCode)
	}

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return fmt.Errorf("failed to read registry response: %w", err)
	}

	var registry ConnectorRegistry
	if err := json.Unmarshal(body, &registry); err != nil {
		return fmt.Errorf("failed to parse registry: %w", err)
	}

	sf.registry = &registry
	return nil
}

// ClearCache clears the cached registry data
func (sf *SchemaFetcher) ClearCache() {
	sf.mu.Lock()
	defer sf.mu.Unlock()
	sf.registry = nil
}
