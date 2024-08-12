resource "airbyte_source_klarna" "my_source_klarna" {
  configuration = {
    password   = "...my_password..."
    playground = true
    region     = "oc"
    username   = "Gretchen35"
  }
  definition_id = "b1e50c14-468d-4231-8dd9-8f81edeee1be"
  name          = "Sophia Kunze"
  secret_id     = "...my_secret_id..."
  workspace_id  = "eeaf419b-c59e-404a-869e-9d149f3b04e3"
}