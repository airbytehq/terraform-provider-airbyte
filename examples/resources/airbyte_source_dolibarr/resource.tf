resource "airbyte_source_dolibarr" "my_source_dolibarr" {
  configuration = {
    api_key                = "...my_api_key..."
    my_dolibarr_domain_url = "...my_my_dolibarr_domain_url..."
    start_date             = "2022-10-29T07:32:56.043Z"
  }
  definition_id = "2292273e-92fb-4a2a-9d00-148222335f72"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b956d506-2b8b-4129-b92e-a8d074f22591"
}