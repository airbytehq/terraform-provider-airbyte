resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "825101e3-e25c-4699-88d0-388851ec06fd"
  name          = "Opal Leuschke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "64e95a7a-3692-4db0-ad3b-499dcbdae34a"
}