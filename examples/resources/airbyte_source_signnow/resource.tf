resource "airbyte_source_signnow" "my_source_signnow" {
  configuration = {
    api_key_id = "...my_api_key_id..."
    auth_token = "...my_auth_token..."
    name_filter_for_documents = [
      "{ \"see\": \"documentation\" }"
    ]
    start_date = "2021-01-19T12:39:26.155Z"
  }
  definition_id = "bb75e782-fabd-465f-8ccd-8f463d3a2b69"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7b0ac2e-7432-4113-b8ac-38bcd80988bc"
}