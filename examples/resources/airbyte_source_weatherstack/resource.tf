resource "airbyte_source_weatherstack" "my_source_weatherstack" {
  configuration = {
    access_key      = "...my_access_key..."
    historical_date = "2015-01-21"
    query           = "New York"
  }
  definition_id = "f2802a05-bd6e-41ff-b900-342f3abc710d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "35bb944f-6a96-4005-bdfe-9b1db68f2541"
}