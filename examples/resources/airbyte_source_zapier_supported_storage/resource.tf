resource "airbyte_source_zapier_supported_storage" "my_source_zapiersupportedstorage" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    secret                = "...my_secret..."
  }
  definition_id = "e12b3311-0718-484a-963a-7cadcbf41363"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a8537d6-b252-49db-b596-38d5abb4050b"
}