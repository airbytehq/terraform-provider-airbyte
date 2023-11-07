resource "airbyte_destination_keen" "my_destination_keen" {
  configuration = {
    api_key         = "ABCDEFGHIJKLMNOPRSTUWXYZ"
    infer_timestamp = true
    project_id      = "58b4acc22ba938934e888322e"
  }
  name         = "Marlene Ondricka"
  workspace_id = "112db1ee-ca9f-491e-b58c-33257456993f"
}