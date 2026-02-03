resource "airbyte_source_churnkey" "my_source_churnkey" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    x_ck_app              = "...my_x_ck_app..."
  }
  definition_id = "95508b79-14bf-482f-8a86-1ab0695cc029"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5d05e29-da06-4c98-a323-6a596af1ec7b"
}