resource "airbyte_source_wordpress" "my_source_wordpress" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain                = "...my_domain..."
    password              = "...my_password..."
    start_date            = "2022-12-23T03:17:30.712Z"
    username              = "...my_username..."
  }
  definition_id = "2fa647c0-5c10-46bf-9dd7-dc173f54337d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "270a61e5-8761-4aa9-97bc-262e825c7997"
}