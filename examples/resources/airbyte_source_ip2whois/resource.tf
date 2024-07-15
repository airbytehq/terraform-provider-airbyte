resource "airbyte_source_ip2whois" "my_source_ip2whois" {
  configuration = {
    api_key = "...my_api_key..."
    domain  = "www.facebook.com"
  }
  definition_id = "ddacae82-61af-48b9-bb48-50d654be1e78"
  name          = "Mercedes Turcotte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "327e7787-5126-4eb5-a944-312d5d5e6a2d"
}