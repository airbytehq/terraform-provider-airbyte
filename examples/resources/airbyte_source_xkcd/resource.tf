resource "airbyte_source_xkcd" "my_source_xkcd" {
  configuration = {
    comic_number = "...my_comic_number..."
  }
  definition_id = "dfb41358-a13b-44aa-916f-496122ab5517"
  name          = "Ronnie Lueilwitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eb7876a0-574e-46cc-bce7-443ab0c740ec"
}