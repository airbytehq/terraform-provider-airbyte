resource "airbyte_source_cart" "my_source_cart" {
  configuration = {
    credentials = {
      central_api_router = {
        site_id     = "...my_site_id..."
        user_name   = "Ceasar63"
        user_secret = "...my_user_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
  }
  definition_id = "7074f016-f721-427f-b3f8-652b2551b023"
  name          = "Mr. Spencer Casper"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7ffb268-dc18-4708-bd37-ac99fd785161"
}