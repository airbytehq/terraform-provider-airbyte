resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "128aabba-d073-4078-ac3e-822825101e3e"
  name          = "Joann Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "948d0388-851e-4c06-bd3b-8cc64e95a7a3"
}