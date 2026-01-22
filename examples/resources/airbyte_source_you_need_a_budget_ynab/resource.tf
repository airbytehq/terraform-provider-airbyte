resource "airbyte_source_you_need_a_budget_ynab" "my_source_youneedabudgetynab" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "5ddc2ffc-4ba2-4903-a7e9-02547ea31a09"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "51cfb6d2-e1c6-4a9e-a377-bbde51ffe54a"
}