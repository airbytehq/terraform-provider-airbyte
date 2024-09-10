resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    start_date = "...my_start_date..."
  }
  definition_id = "716f1b83-31df-4025-a154-586c7cdfb558"
  name          = "Wallace Kuhlman V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d3d1fcf2-b675-4511-890e-c6c18f2017e8"
}