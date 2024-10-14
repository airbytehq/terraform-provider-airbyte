resource "airbyte_source_looker" "my_source_looker" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    domain        = "domainname.looker.com"
    run_look_ids = [
      "..."
    ]
  }
  definition_id = "7cd3e379-6def-4bcd-970c-eb6bfecb35e6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "121332e6-93da-456e-a4b8-edd02789698c"
}