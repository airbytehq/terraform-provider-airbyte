resource "airbyte_source_pabbly_subscriptions_billing" "my_source_pabblysubscriptionsbilling" {
  configuration = {
    password = "...my_password..."
    username = "...my_username..."
  }
  definition_id = "8483c114-30c9-4fb6-b997-99bf31e35972"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "15502891-f972-4140-a919-5c43432d7f7a"
}