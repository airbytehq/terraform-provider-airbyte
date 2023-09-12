resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    source_type = "rki-covid"
    start_date  = "...my_start_date..."
  }
  name         = "Penny Morissette"
  secret_id    = "...my_secret_id..."
  workspace_id = "7ef807aa-e03f-433c-a79f-b9de4032ba26"
}