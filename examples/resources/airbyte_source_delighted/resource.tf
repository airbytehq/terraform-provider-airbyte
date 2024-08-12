resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "3b7e8dc3-71ec-4bee-9051-1b439ed171c9"
  name          = "Kirk Windler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4783ac23-2bfa-441c-80b2-3345c949a955"
}