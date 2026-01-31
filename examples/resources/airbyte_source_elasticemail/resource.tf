resource "airbyte_source_elasticemail" "my_source_elasticemail" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    from                  = "2022-05-09T08:42:35.609Z"
    scope_type            = "Personal"
    start_date            = "2021-07-14T16:01:14.874Z"
  }
  definition_id = "7ef51b91-1b98-46e0-8de6-4eef4cc1389b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6cca2b72-45d5-4069-8044-f2a6c5367ba0"
}