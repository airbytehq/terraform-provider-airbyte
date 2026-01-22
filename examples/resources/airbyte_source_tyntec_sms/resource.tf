resource "airbyte_source_tyntec_sms" "my_source_tyntecsms" {
  configuration = {
    api_key = "...my_api_key..."
    from    = "...my_from..."
    message = "...my_message..."
    to      = "...my_to..."
  }
  definition_id = "0633ab04-7ff2-4dad-b463-c4e6c46975c9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d475dbdd-b4d7-4b65-974a-503eca17bb36"
}