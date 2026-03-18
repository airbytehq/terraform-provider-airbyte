resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    accounts_step_days    = 7
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    begin_time            = "2021-12-01T00:00:00Z"
    end_time              = "2021-12-01T00:00:00Z"
    is_sandbox            = false
    num_workers           = 1
  }
  definition_id = "cd42861b-01fc-4658-a8ab-5d11d0510f01"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6eacf260-b477-41b6-8093-1c461d8bd3e7"
}