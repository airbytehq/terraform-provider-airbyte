resource "airbyte_destination_keen" "my_destination_keen" {
  configuration = {
    api_key          = "ABCDEFGHIJKLMNOPRSTUWXYZ"
    destination_type = "keen"
    infer_timestamp  = true
    project_id       = "58b4acc22ba938934e888322e"
  }
  name         = "Mrs. Michele Williamson"
  workspace_id = "56082d68-ea19-4f1d-9705-1339d08086a1"
}