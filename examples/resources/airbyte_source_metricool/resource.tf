resource "airbyte_source_metricool" "my_source_metricool" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    blog_ids = [
      "{ \"see\": \"documentation\" }"
    ]
    end_date   = "2022-10-02T08:33:31.763Z"
    start_date = "2021-03-27T14:44:37.923Z"
    user_id    = "...my_user_id..."
    user_token = "...my_user_token..."
  }
  definition_id = "166feacd-066b-4258-beed-c30308e92bb1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4828701a-d880-4a4a-aeff-9f377a4341f1"
}