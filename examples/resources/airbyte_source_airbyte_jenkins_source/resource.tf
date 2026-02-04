resource "airbyte_source_airbyte_jenkins_source" "my_source_airbytejenkinssource" {
  configuration = {
    depth          = 8.94
    last100_builds = false
    page_size      = 10
    server_url     = "https://my-jenkins-server.example.com"
    token          = "...my_token..."
    user           = "...my_user..."
  }
  definition_id = "50554ec3-9cbc-40cf-8463-64fbb60b550a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8b99ec07-0dbf-487e-93c2-3be4969ffd49"
}