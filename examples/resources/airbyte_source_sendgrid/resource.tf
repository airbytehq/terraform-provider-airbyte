resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2022-12-03T07:28:22.238Z"
  }
  definition_id = "3dd760cc-3ae1-4d77-9ee9-78f160f45746"
  name          = "Dr. Salvatore Bergnaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0243724c-2fa9-40b3-bc58-aed9663e07de"
}