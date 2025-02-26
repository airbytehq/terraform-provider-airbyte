resource "airbyte_source_intruder" "my_source_intruder" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "9210e093-3147-4549-b236-70f7bce700af"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5201436-54cd-45e2-92ff-86b75cfcac57"
}