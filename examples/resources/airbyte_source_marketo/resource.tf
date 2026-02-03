resource "airbyte_source_marketo" "my_source_marketo" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    domain_url            = "https://000-AAA-000.mktorest.com"
    start_date            = "2020-09-25T00:00:00Z"
  }
  definition_id = "b0812fe1-2987-446e-a53b-52a46454b43a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "53ade008-9910-400b-ab2d-7768838dfb6b"
}