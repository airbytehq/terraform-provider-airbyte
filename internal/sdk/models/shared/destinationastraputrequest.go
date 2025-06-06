// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

type DestinationAstraPutRequest struct {
	Name        string `json:"name"`
	WorkspaceID string `json:"workspaceId"`
	// The configuration model for the Vector DB based destinations. This model is used to generate the UI for the destination configuration,
	// as well as to provide type safety for the configuration passed to the destination.
	//
	// The configuration model is composed of four parts:
	// * Processing configuration
	// * Embedding configuration
	// * Indexing configuration
	// * Advanced configuration
	//
	// Processing, embedding and advanced configuration are provided by this base class, while the indexing configuration is provided by the destination connector in the sub class.
	Configuration DestinationAstraUpdate `json:"configuration"`
}

func (o *DestinationAstraPutRequest) GetName() string {
	if o == nil {
		return ""
	}
	return o.Name
}

func (o *DestinationAstraPutRequest) GetWorkspaceID() string {
	if o == nil {
		return ""
	}
	return o.WorkspaceID
}

func (o *DestinationAstraPutRequest) GetConfiguration() DestinationAstraUpdate {
	if o == nil {
		return DestinationAstraUpdate{}
	}
	return o.Configuration
}
