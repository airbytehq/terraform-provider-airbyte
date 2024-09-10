resource "airbyte_source_hardcoded_records" "my_source_hardcodedrecords" {
  configuration = {
    count = 9
  }
  definition_id = "8df8fdda-cae8-4261-af8b-9bb4850d654b"
  name          = "Albert Tromp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5de7e327-e778-4751-a6eb-56944312d5d5"
}