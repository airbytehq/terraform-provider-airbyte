resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "cb974a7d-8001-4cbe-8b7d-aa2d7b021550"
  name          = "Matt Smith"
  secret_id     = "...my_secret_id..."
  workspace_id  = "df01cf56-ee29-44ad-bc5b-d340789cf0b8"
}