resource "airbyte_source_babelforce" "my_source_babelforce" {
  configuration = {
    access_key_id         = "...my_access_key_id..."
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    date_created_from     = 1651363200
    date_created_to       = 1651363200
    region                = "services"
  }
  definition_id = "87206e6b-625f-461f-aebf-1e7928419d15"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "aa32c747-a3b5-4cba-996c-034b84d316ce"
}