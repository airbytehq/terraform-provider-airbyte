resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "fcdac638-7854-4b69-842e-8b9a534c06fe"
  name          = "Genevieve Corwin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4eff211a-dfc7-421d-91f8-0239a929660c"
}