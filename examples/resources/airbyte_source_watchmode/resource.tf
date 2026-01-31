resource "airbyte_source_watchmode" "my_source_watchmode" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    search_val            = "...my_search_val..."
    start_date            = "2022-06-29T19:10:03.615Z"
  }
  definition_id = "a0031fcd-269e-477f-923e-df7b78fdccfb"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d4150f21-ccba-4594-a601-68b3357ba468"
}