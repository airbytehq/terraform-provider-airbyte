// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package shared

type SourceOraclePutRequest struct {
	Configuration SourceOracleUpdate `json:"configuration"`
	Name          string             `json:"name"`
	WorkspaceID   string             `json:"workspaceId"`
}

func (o *SourceOraclePutRequest) GetConfiguration() SourceOracleUpdate {
	if o == nil {
		return SourceOracleUpdate{}
	}
	return o.Configuration
}

func (o *SourceOraclePutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *SourceOraclePutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}
