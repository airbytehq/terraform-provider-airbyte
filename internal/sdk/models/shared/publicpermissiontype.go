// Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

package shared

import (
	"encoding/json"
	"fmt"
)

// PublicPermissionType - Subset of `PermissionType` (removing `instance_admin`), could be used in public-api.
type PublicPermissionType string

const (
	PublicPermissionTypeOrganizationAdmin  PublicPermissionType = "organization_admin"
	PublicPermissionTypeOrganizationEditor PublicPermissionType = "organization_editor"
	PublicPermissionTypeOrganizationRunner PublicPermissionType = "organization_runner"
	PublicPermissionTypeOrganizationReader PublicPermissionType = "organization_reader"
	PublicPermissionTypeOrganizationMember PublicPermissionType = "organization_member"
	PublicPermissionTypeWorkspaceAdmin     PublicPermissionType = "workspace_admin"
	PublicPermissionTypeWorkspaceEditor    PublicPermissionType = "workspace_editor"
	PublicPermissionTypeWorkspaceRunner    PublicPermissionType = "workspace_runner"
	PublicPermissionTypeWorkspaceReader    PublicPermissionType = "workspace_reader"
)

func (e PublicPermissionType) ToPointer() *PublicPermissionType {
	return &e
}
func (e *PublicPermissionType) UnmarshalJSON(data []byte) error {
	var v string
	if err := json.Unmarshal(data, &v); err != nil {
		return err
	}
	switch v {
	case "organization_admin":
		fallthrough
	case "organization_editor":
		fallthrough
	case "organization_runner":
		fallthrough
	case "organization_reader":
		fallthrough
	case "organization_member":
		fallthrough
	case "workspace_admin":
		fallthrough
	case "workspace_editor":
		fallthrough
	case "workspace_runner":
		fallthrough
	case "workspace_reader":
		*e = PublicPermissionType(v)
		return nil
	default:
		return fmt.Errorf("invalid value for PublicPermissionType: %v", v)
	}
}
