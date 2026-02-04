resource "airbyte_source_box_data_extract" "my_source_boxdataextract" {
  configuration = {
    ask_ai_prompt                = "...my_ask_ai_prompt..."
    box_folder_id                = "...my_box_folder_id..."
    box_subject_id               = "...my_box_subject_id..."
    box_subject_type             = "enterprise"
    client_id                    = "...my_client_id..."
    client_secret                = "...my_client_secret..."
    extract_ai_prompt            = "...my_extract_ai_prompt..."
    extract_structured_ai_fields = "...my_extract_structured_ai_fields..."
    is_recursive                 = false
  }
  definition_id = "2fe216f8-7e77-4ef5-908e-5f6620193a57"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec59570c-219e-4518-acee-2eb6f99af4dd"
}