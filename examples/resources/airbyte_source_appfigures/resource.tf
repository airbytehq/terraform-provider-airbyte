resource "airbyte_source_appfigures" "my_source_appfigures" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    group_by              = "country"
    search_store          = "...my_search_store..."
    start_date            = "2022-10-18T12:34:30.006Z"
  }
  definition_id = "c43d4d64-3a95-44de-9802-e8b873b3c6d3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c08bb69b-da4a-49e5-845f-5b8957d87d02"
}