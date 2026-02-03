resource "airbyte_source_eventbrite" "my_source_eventbrite" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    private_token         = "...my_private_token..."
    start_date            = "2020-12-22T11:47:14.981Z"
  }
  definition_id = "129bcfc5-58a7-4780-bd8b-32bcaa8321ff"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "acb78d3c-dc10-4620-b5e3-45334517c1ca"
}