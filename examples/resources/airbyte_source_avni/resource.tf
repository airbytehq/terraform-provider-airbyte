resource "airbyte_source_avni" "my_source_avni" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    start_date            = "2000-10-31T01:30:00.000Z"
    username              = "...my_username..."
  }
  definition_id = "d1201d59-cbab-46cf-8b70-abbc6e8e3702"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2436ee3d-5a07-4655-8b97-f75a05795265"
}