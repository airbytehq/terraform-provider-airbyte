resource "airbyte_source_illumina_basespace" "my_source_illuminabasespace" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    domain                = "...my_domain..."
    user                  = "...my_user..."
  }
  definition_id = "fa93c2ca-c0b1-4cfc-b443-4cc00a644679"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cefe5731-df0c-43f7-a46a-e63b29a4ac85"
}