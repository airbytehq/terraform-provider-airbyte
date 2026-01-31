resource "airbyte_source_brex" "my_source_brex" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2020-11-17T21:56:11.186Z"
    user_token            = "...my_user_token..."
  }
  definition_id = "360cfa72-a3cb-4128-af62-98e511c449d1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d4076d5-fd8e-4bb0-8388-fad51ef92edb"
}