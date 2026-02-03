resource "airbyte_source_gutendex" "my_source_gutendex" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    author_year_end       = -500
    author_year_start     = 2020
    copyright             = false
    languages             = "en"
    search                = "dickens%20great%20expect"
    sort                  = "ascending"
    topic                 = "children"
  }
  definition_id = "741fa85f-790e-4a62-807d-c3d6d966a992"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "abfa20fd-2d77-4fbf-ace1-fcc26e5c4f89"
}