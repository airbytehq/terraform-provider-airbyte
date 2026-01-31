resource "airbyte_source_thrive_learning" "my_source_thrivelearning" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    start_date            = "2022-07-05T00:51:10.326Z"
    username              = "...my_username..."
  }
  definition_id = "159f55cd-cbe5-4562-8fbf-3926d8328c54"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3a5f1a87-5d6d-4b41-8f7d-15fd71dcf3b2"
}