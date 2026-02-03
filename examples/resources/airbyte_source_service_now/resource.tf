resource "airbyte_source_service_now" "my_source_servicenow" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    base_url              = "...my_base_url..."
    password              = "...my_password..."
    username              = "...my_username..."
  }
  definition_id = "b60ad597-6adb-458d-9b66-bb4cfd723f5d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0548485c-6d74-4942-b377-894f6b4e7ef2"
}