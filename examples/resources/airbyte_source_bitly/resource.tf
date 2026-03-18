resource "airbyte_source_bitly" "my_source_bitly" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    end_date              = "2022-02-10T12:17:54.053Z"
    start_date            = "2022-03-11T20:04:11.924Z"
  }
  definition_id = "3631f862-646b-4abf-abde-dc37acf3847c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8889fb22-f0f2-4728-a5e7-e3b3f44f37c1"
}