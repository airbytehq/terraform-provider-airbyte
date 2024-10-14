resource "airbyte_permission" "my_permission" {
  organization_id = "d109e1f3-ec33-4ca2-89ba-9b654ec67eae"
  permission_type = "organization_reader"
  user_id         = "c3231461-7373-4a98-aed1-9a79ad305d18"
  workspace_id    = "8b030f86-f6a4-490a-92a7-a996c2b017ea"
}