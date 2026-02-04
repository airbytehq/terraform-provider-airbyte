resource "airbyte_destination_local_json" "my_destination_localjson" {
  configuration = {
    destination_path = "/json_data"
  }
  definition_id = "4b21dec9-7801-4abe-b4ad-85141aafe66f"
  name          = "...my_name..."
  workspace_id  = "45575a9f-9698-40e2-8189-fd85e0d33b6f"
}