resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    source_type = "xkcd"
  }
  name         = "Tricia Senger"
  workspace_id = "3bb0ce8a-a654-432a-986e-b7e14ca56408"
}