resource "airbyte_destination_keen" "my_destination_keen" {
  configuration = {
    api_key          = "ABCDEFGHIJKLMNOPRSTUWXYZ"
    destination_type = "keen"
    infer_timestamp  = true
    project_id       = "58b4acc22ba938934e888322e"
  }
  name         = "Fernando Barton"
  workspace_id = "88282aa4-8256-42f2-a2e9-817ee17cbe61"
}