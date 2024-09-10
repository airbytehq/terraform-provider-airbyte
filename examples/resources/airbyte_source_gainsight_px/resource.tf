resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "c03242cc-d276-43a0-930e-b91c3df25934"
  name          = "Lloyd Herzog"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8258f30-a271-483b-80ec-7045956c03ec"
}