// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package types

import "github.com/hashicorp/terraform-plugin-framework/types"

type SourceSurveymonkey struct {
	Credentials SurveyMonkeyAuthorizationMethod `tfsdk:"credentials"`
	Origin      types.String                    `tfsdk:"origin"`
	StartDate   types.String                    `tfsdk:"start_date"`
	SurveyIds   []types.String                  `tfsdk:"survey_ids"`
}
