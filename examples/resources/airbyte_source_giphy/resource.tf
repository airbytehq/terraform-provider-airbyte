resource "airbyte_source_giphy" "my_source_giphy" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    query                 = "...my_query..."
    query_for_clips       = "...my_query_for_clips..."
    query_for_gif         = "...my_query_for_gif..."
    query_for_stickers    = "...my_query_for_stickers..."
    start_date            = "2022-04-11T13:33:39.667Z"
  }
  definition_id = "873caa16-3a7f-42ab-8efd-b0ccb2d1796d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7672ddc7-c900-4041-a7cf-1ee4a86a981d"
}