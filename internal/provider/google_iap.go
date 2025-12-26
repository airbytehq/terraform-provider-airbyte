package provider

import (
	"crypto"
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha256"
	"crypto/x509"
	"encoding/base64"
	"encoding/json"
	"encoding/pem"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"os"
	"strings"
	"sync"
	"time"

	"golang.org/x/sync/singleflight"
)

// ServiceAccountKey represents the structure of a Google Service Account JSON key file
type ServiceAccountKey struct {
	Type                    string `json:"type"`
	ProjectID               string `json:"project_id"`
	PrivateKeyID            string `json:"private_key_id"`
	PrivateKey              string `json:"private_key"`
	ClientEmail             string `json:"client_email"`
	ClientID                string `json:"client_id"`
	AuthURI                 string `json:"auth_uri"`
	TokenURI                string `json:"token_uri"`
	AuthProviderX509CertURL string `json:"auth_provider_x509_cert_url"`
	ClientX509CertURL       string `json:"client_x509_cert_url"`
}

// IAPTokenResponse represents the response from Google OAuth2 token endpoint
type IAPTokenResponse struct {
	IDToken string `json:"id_token"`
}

// IAPTokenManager handles IAP token generation and caching
type IAPTokenManager struct {
	serviceAccountKey *ServiceAccountKey
	iapClientID       string
	httpClient        *http.Client

	token      string
	expiresAt  time.Time
	tokenMutex sync.RWMutex
	tokenGroup *singleflight.Group
}

// NewIAPTokenManager creates a new IAPTokenManager from configuration
func NewIAPTokenManager(serviceAccountKeyJSON, iapClientID string) (*IAPTokenManager, error) {
	if serviceAccountKeyJSON == "" || iapClientID == "" {
		return nil, nil
	}

	// Try to read as file path first
	keyData := []byte(serviceAccountKeyJSON)
	if _, err := os.Stat(serviceAccountKeyJSON); err == nil {
		fileData, err := os.ReadFile(serviceAccountKeyJSON)
		if err != nil {
			return nil, fmt.Errorf("failed to read service account key file: %w", err)
		}
		keyData = fileData
	}

	var saKey ServiceAccountKey
	if err := json.Unmarshal(keyData, &saKey); err != nil {
		return nil, fmt.Errorf("failed to parse service account key JSON: %w", err)
	}

	if saKey.PrivateKey == "" || saKey.ClientEmail == "" {
		return nil, fmt.Errorf("invalid service account key: missing required fields")
	}

	return &IAPTokenManager{
		serviceAccountKey: &saKey,
		iapClientID:       iapClientID,
		httpClient:        &http.Client{Timeout: 30 * time.Second},
		tokenGroup:        new(singleflight.Group),
	}, nil
}

// GetToken returns a valid IAP token, refreshing if necessary
func (m *IAPTokenManager) GetToken() (string, error) {
	m.tokenMutex.RLock()
	if m.token != "" && time.Now().Add(60*time.Second).Before(m.expiresAt) {
		token := m.token
		m.tokenMutex.RUnlock()
		return token, nil
	}
	m.tokenMutex.RUnlock()

	// Use singleflight to prevent concurrent token refreshes
	result, err, _ := m.tokenGroup.Do("refresh", func() (interface{}, error) {
		return m.refreshToken()
	})

	if err != nil {
		return "", err
	}

	return result.(string), nil
}

// refreshToken generates a new IAP token
func (m *IAPTokenManager) refreshToken() (string, error) {
	// Create JWT
	jwt, err := m.createJWT()
	if err != nil {
		return "", fmt.Errorf("failed to create JWT: %w", err)
	}

	// Exchange JWT for ID token
	idToken, err := m.exchangeJWTForIDToken(jwt)
	if err != nil {
		return "", fmt.Errorf("failed to exchange JWT for ID token: %w", err)
	}

	// Cache the token
	m.tokenMutex.Lock()
	m.token = idToken
	m.expiresAt = time.Now().Add(55 * time.Minute) // IAP tokens are valid for ~1 hour
	m.tokenMutex.Unlock()

	return idToken, nil
}

// createJWT creates a signed JWT for IAP authentication
func (m *IAPTokenManager) createJWT() (string, error) {
	// Parse private key
	block, _ := pem.Decode([]byte(m.serviceAccountKey.PrivateKey))
	if block == nil {
		return "", fmt.Errorf("failed to decode private key PEM")
	}

	privateKey, err := x509.ParsePKCS8PrivateKey(block.Bytes)
	if err != nil {
		return "", fmt.Errorf("failed to parse private key: %w", err)
	}

	rsaKey, ok := privateKey.(*rsa.PrivateKey)
	if !ok {
		return "", fmt.Errorf("private key is not RSA")
	}

	// Create JWT header
	header := map[string]string{
		"alg": "RS256",
		"typ": "JWT",
	}
	headerJSON, _ := json.Marshal(header)
	headerB64 := base64.RawURLEncoding.EncodeToString(headerJSON)

	// Create JWT claims
	now := time.Now()
	claims := map[string]interface{}{
		"iss":             m.serviceAccountKey.ClientEmail,
		"sub":             m.serviceAccountKey.ClientEmail,
		"aud":             "https://oauth2.googleapis.com/token",
		"iat":             now.Unix(),
		"exp":             now.Add(time.Hour).Unix(),
		"target_audience": m.iapClientID,
	}
	claimsJSON, _ := json.Marshal(claims)
	claimsB64 := base64.RawURLEncoding.EncodeToString(claimsJSON)

	// Sign JWT
	signingInput := headerB64 + "." + claimsB64
	signature, err := signRS256(rsaKey, []byte(signingInput))
	if err != nil {
		return "", fmt.Errorf("failed to sign JWT: %w", err)
	}
	signatureB64 := base64.RawURLEncoding.EncodeToString(signature)

	return signingInput + "." + signatureB64, nil
}

// signRS256 signs data using RS256 algorithm
func signRS256(key *rsa.PrivateKey, data []byte) ([]byte, error) {
	h := sha256.New()
	h.Write(data)
	return rsa.SignPKCS1v15(rand.Reader, key, crypto.SHA256, h.Sum(nil))
}

// exchangeJWTForIDToken exchanges a signed JWT for an IAP ID token
func (m *IAPTokenManager) exchangeJWTForIDToken(jwt string) (string, error) {
	data := url.Values{}
	data.Set("grant_type", "urn:ietf:params:oauth:grant-type:jwt-bearer")
	data.Set("assertion", jwt)

	req, err := http.NewRequest(http.MethodPost, "https://oauth2.googleapis.com/token", strings.NewReader(data.Encode()))
	if err != nil {
		return "", fmt.Errorf("failed to create request: %w", err)
	}
	req.Header.Set("Content-Type", "application/x-www-form-urlencoded")

	resp, err := m.httpClient.Do(req)
	if err != nil {
		return "", fmt.Errorf("failed to send request: %w", err)
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(resp.Body)
	if err != nil {
		return "", fmt.Errorf("failed to read response: %w", err)
	}

	if resp.StatusCode != http.StatusOK {
		return "", fmt.Errorf("token exchange failed with status %d: %s", resp.StatusCode, string(body))
	}

	var tokenResp IAPTokenResponse
	if err := json.Unmarshal(body, &tokenResp); err != nil {
		return "", fmt.Errorf("failed to parse token response: %w", err)
	}

	if tokenResp.IDToken == "" {
		return "", fmt.Errorf("empty ID token in response")
	}

	return tokenResp.IDToken, nil
}
