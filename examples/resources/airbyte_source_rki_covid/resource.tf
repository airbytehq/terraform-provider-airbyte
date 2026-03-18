resource "airbyte_source_rki_covid" "my_source_rkicovid" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "...my_start_date..."
  }
  definition_id = "d78e5de0-aa44-4744-aa4f-74c818ccfe19"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "714ac19c-32e7-4d3b-af00-34af7ccf88e0"
}