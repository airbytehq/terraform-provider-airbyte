resource "airbyte_destination_keen" "my_destination_keen" {
  configuration = {
    api_key         = "ABCDEFGHIJKLMNOPRSTUWXYZ"
    infer_timestamp = false
    project_id      = "58b4acc22ba938934e888322e"
  }
  definition_id = "c50c9ec7-6747-4b06-8f86-fe4a6f8bb810"
  name          = "Orville Kertzmann"
  workspace_id  = "f802e7b2-183b-42bc-8f6d-b7afdacad2c1"
}