resource "airbyte_destination_csv" "my_destination_csv" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    delimiter_type = {
      # ...
    }
    destination_path = "/local"
  }
  definition_id = "728edd86-b7a0-42c2-9cb9-03d8d56cf605"
  name          = "...my_name..."
  workspace_id  = "63d1df00-aa9c-47f3-8d6c-37ccd0dae42d"
}