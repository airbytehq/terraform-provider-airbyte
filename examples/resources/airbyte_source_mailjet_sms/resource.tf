resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "cb6bf32f-af82-45be-a4ec-87aaffeb9ea2"
  name          = "Robert Windler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f4166b4-2b69-4c61-927b-bad3f0bf8ca7"
}