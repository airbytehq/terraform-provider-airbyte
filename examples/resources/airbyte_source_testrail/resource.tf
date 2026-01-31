resource "airbyte_source_testrail" "my_source_testrail" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    domain_name           = "...my_domain_name..."
    password              = "...my_password..."
    start_date            = "2022-07-21T00:40:37.709Z"
    username              = "...my_username..."
  }
  definition_id = "741fa85f-790e-4a62-807d-c3d6d966a992"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "abfa20fd-2d77-4fbf-ace1-fcc26e5c4f89"
}