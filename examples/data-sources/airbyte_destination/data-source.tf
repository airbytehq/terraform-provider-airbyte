data "airbyte_destination" "my_destination" {
  destination_id             = "...my_destination_id..."
  include_secret_coordinates = false
}