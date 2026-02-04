resource "airbyte_source_surveycto" "my_source_surveycto" {
  configuration = {
    form_id = [
      "{ \"see\": \"documentation\" }"
    ]
    password    = "...my_password..."
    server_name = "...my_server_name..."
    start_date  = "Jan 09, 2022 00:00:00 AM"
    username    = "...my_username..."
  }
  definition_id = "cbfda4e3-5dff-4503-8591-9924130b0a2b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1cca2350-4a07-432b-899b-c6e60bc5fa61"
}