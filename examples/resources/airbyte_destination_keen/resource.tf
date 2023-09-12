resource "airbyte_destination_keen" "my_destination_keen" {
  configuration = {
    api_key          = "ABCDEFGHIJKLMNOPRSTUWXYZ"
    destination_type = "keen"
    infer_timestamp  = false
    project_id       = "58b4acc22ba938934e888322e"
  }
  name         = "Todd Oberbrunner DDS"
  workspace_id = "688282aa-4825-462f-a22e-9817ee17cbe6"
}