resource "airbyte_source_partnerstack" "my_source_partnerstack" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    private_key           = "...my_private_key..."
    public_key            = "...my_public_key..."
    start_date            = "2017-01-25T00:00:00Z"
  }
  definition_id = "d91d4063-a775-45f3-8182-c44ae6698a82"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "7d3da4fa-dc7a-4b24-b492-a63a11977b17"
}