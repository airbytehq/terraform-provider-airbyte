resource "airbyte_source_mailosaur" "my_source_mailosaur" {
  configuration = {
    password = "...my_password..."
    username = "...my_username..."
  }
  definition_id = "72d99681-c3f6-48fb-a836-3b3ea751c578"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9df224e6-2787-4cc0-a380-fb044f075adb"
}