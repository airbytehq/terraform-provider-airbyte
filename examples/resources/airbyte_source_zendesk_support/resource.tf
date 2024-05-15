resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Dorthy_Blick38@yahoo.com"
      }
    }
    ignore_pagination = true
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "5d8739c0-e34b-4352-9db0-4c9bce387d66"
  name          = "Megan Gusikowski V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6797a763-e10f-499e-8087-9e49484a7485"
}