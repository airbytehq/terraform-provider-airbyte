resource "airbyte_source_looker" "my_source_looker" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    domain                = "domainname.looker.com"
    run_look_ids = [
      "..."
    ]
  }
  definition_id = "00405b19-9768-4e0c-b1ae-9fc2ee2b2a8c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "121332e6-93da-456e-a4b8-edd02789698c"
}