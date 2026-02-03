resource "airbyte_source_free_agent_connector" "my_source_freeagentconnector" {
  configuration = {
    additional_properties  = "{ \"see\": \"documentation\" }"
    client_id              = "...my_client_id..."
    client_refresh_token_2 = "...my_client_refresh_token_2..."
    client_secret          = "...my_client_secret..."
    payroll_year           = 1.2
    updated_since          = "2021-12-19T14:24:32.551Z"
  }
  definition_id = "af87e943-35f0-4064-b149-0caa8e5de824"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "878b6d66-e507-42e1-9de7-3e3d67df721d"
}