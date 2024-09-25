resource "airbyte_source_goldcast" "my_source_goldcast" {
  configuration = {
    access_key = "...my_access_key..."
  }
  definition_id = "12d5d5e6-a2d8-43c0-8c98-dd5412256513"
  name          = "Miss Melvin Hirthe II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "88926ab9-cfe2-4e85-afcc-9acc6e7e95c9"
}