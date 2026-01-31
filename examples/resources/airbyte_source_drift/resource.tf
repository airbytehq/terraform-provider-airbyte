resource "airbyte_source_drift" "my_source_drift" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    email = "...my_email..."
  }
  definition_id = "e7bbba77-1c0e-4409-bc9d-3e42115df2be"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0ce318ec-038a-42b0-88ff-2c9a6bed6638"
}