resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "39da5f15-52e1-46cb-ab57-01977de85fbc"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "714ac19c-32e7-4d3b-af00-34af7ccf88e0"
}