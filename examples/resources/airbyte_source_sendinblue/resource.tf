resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sendinblue"
  }
  name         = "Nathaniel Kozey"
  workspace_id = "84ad99b4-1d61-4243-9318-70cf68b03ad4"
}