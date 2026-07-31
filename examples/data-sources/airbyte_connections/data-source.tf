data "airbyte_connections" "my_connections" {
  include_deleted = false
  limit           = 20
  offset          = 0
  tag_ids = [
    "05db8e59-424e-49ea-80ce-1db6a74f3dfc"
  ]
  workspace_ids = [
    "a31bb8f4-e5b5-4dc9-bf1e-872e426f3223"
  ]
}