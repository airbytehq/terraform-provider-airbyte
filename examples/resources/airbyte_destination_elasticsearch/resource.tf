resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      api_key_secret = {
        api_key_id     = "...my_api_key_id..."
        api_key_secret = "...my_api_key_secret..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    tunnel_method = {
      no_tunnel = {}
    }
    upsert = false
  }
  definition_id = "07f993ef-ae2d-4caf-8658-9dab1153f466"
  name          = "Miss Harvey Mohr IV"
  workspace_id  = "55aa0db7-9794-42be-be5f-1f7885566354"
}