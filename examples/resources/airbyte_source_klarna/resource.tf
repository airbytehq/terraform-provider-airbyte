resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "oc"
    username   = "Lessie_Beatty"
  }
  definition_id = "ed1087b9-882d-454c-a598-cc59eb952f06"
  name          = "Carmen Bins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7fd8f9d1-baac-46e0-9b1e-50c14468d231"
}