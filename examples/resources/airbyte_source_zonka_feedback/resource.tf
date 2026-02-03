resource "airbyte_source_zonka_feedback" "my_source_zonkafeedback" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
    datacenter            = "e"
  }
  definition_id = "5076e843-dbcb-431d-85e8-9e8fe58cf536"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5866054c-12ed-4ab8-931f-c0cc6814a666"
}