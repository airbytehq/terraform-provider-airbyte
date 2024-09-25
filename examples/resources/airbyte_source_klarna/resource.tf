resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = false
    region     = "oc"
    username   = "Lauren_Haley"
  }
  definition_id = "6cb5f3bc-4b32-453e-abd5-91e25444d223"
  name          = "Dr. Dixie Strosin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ea1c7d43-320f-4ac9-81a8-dab7e73a5971"
}