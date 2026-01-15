data "airbyte_source" "my_source" {
  include_secret_coordinates = false
  source_id                  = "...my_source_id..."
}