resource "airbyte_source_newsdata" "my_source_newsdata" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    category = [
      "sports"
    ]
    country = [
      "nz"
    ]
    domain = [
      "..."
    ]
    language = [
      "es"
    ]
    one_of = "{ \"see\": \"documentation\" }"
  }
  definition_id = "6ccb636b-3b92-4802-9357-5ce0842c2bd6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b4907e4a-7356-4143-b569-9e1dcbb9f420"
}