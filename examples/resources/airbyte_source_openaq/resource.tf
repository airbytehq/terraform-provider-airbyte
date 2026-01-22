resource "airbyte_source_openaq" "my_source_openaq" {
  configuration = {
    api_key = "...my_api_key..."
    country_ids = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "4749a147-4bf6-47ca-9bb0-047b4e548536"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3edd5344-04d7-4e15-af1a-24d81b653a9a"
}