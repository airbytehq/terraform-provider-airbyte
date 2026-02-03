resource "airbyte_source_judge_me_reviews" "my_source_judgemereviews" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    shop_domain           = "...my_shop_domain..."
    start_date            = "2022-07-02T12:49:01.508Z"
  }
  definition_id = "7e4d86b3-d682-4dfb-a046-cededbdab046"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4bce95d-a638-469b-bc60-412c9d00387e"
}