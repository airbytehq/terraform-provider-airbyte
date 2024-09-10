resource "airbyte_source_mailjet_sms" "my_source_mailjetsms" {
  configuration = {
    end_date   = 1666281656
    start_date = 1666261656
    token      = "...my_token..."
  }
  definition_id = "bbab0457-d926-4398-a6ec-d841e72a766a"
  name          = "Cassandra Hoppe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a512d804-4b05-4c5b-b112-361f26d47b86"
}