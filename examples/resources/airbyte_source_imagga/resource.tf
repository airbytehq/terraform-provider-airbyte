resource "airbyte_source_imagga" "my_source_imagga" {
  configuration = {
    api_key           = "...my_api_key..."
    api_secret        = "...my_api_secret..."
    img_for_detection = "...my_img_for_detection..."
  }
  definition_id = "4f601ac9-494a-4b15-b626-102fdf3a1f66"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d8ea489d-c142-4de1-8d15-04260e3b276e"
}