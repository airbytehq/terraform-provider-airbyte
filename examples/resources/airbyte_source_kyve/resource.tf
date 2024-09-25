resource "airbyte_source_kyve" "my_source_kyve" {
  configuration = {
    pool_ids  = "0,1"
    start_ids = "0,0"
    url_base  = "https://api.kaon.kyve.network/"
  }
  definition_id = "8a50561c-1cc6-4291-a1ad-7b3d761e29ef"
  name          = "Natalie Murphy IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d2b59ab5-6edb-457c-800c-cdeed12bd5eb"
}