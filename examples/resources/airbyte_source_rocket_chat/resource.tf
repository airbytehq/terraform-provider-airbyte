resource "airbyte_source_rocket_chat" "my_source_rocketchat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    endpoint              = "https://airbyte-connector-poc.rocket.chat"
    token                 = "...my_token..."
    user_id               = "...my_user_id..."
  }
  definition_id = "3273678d-6d47-4fea-8279-a481babd4f5a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c30bc9a4-f153-466e-966c-ec8feac9be64"
}