resource "airbyte_source_hoorayhr" "my_source_hoorayhr" {
  configuration = {
    hoorayhrpassword = "...my_hoorayhrpassword..."
    hoorayhrusername = "...my_hoorayhrusername..."
  }
  definition_id = "0116f339-4987-4ef1-8754-b67a7da75fb3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a0434235-dfbb-46d1-aa9a-ccee0099269c"
}