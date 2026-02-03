resource "airbyte_source_sendpulse" "my_source_sendpulse" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
  }
  definition_id = "72d99681-c3f6-48fb-a836-3b3ea751c578"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9df224e6-2787-4cc0-a380-fb044f075adb"
}