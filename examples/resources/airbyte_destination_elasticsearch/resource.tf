resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      username_password = {
        password = "...my_password..."
        username = "...my_username..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    upsert         = true
  }
  definition_id = "68f351a7-2745-4bef-ad7f-996b8e51bb8c"
  name          = "...my_name..."
  workspace_id  = "9de55ce7-1e79-4018-9818-c9bf634debae"
}