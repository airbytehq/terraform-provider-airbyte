resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    playground            = false
    region                = "oc"
    username              = "...my_username..."
  }
  definition_id = "60c24725-00ae-490c-991d-55b78c3197e0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b84c79fe-c1a5-4acb-9d4f-bddafa75b9c1"
}