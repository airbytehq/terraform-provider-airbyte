resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "9e4deda3-0dd3-4cfb-8aa2-fad058413083"
  name          = "Krystal Dietrich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de43c907-f63c-4c02-bc2f-7f5dfb2c26b4"
}