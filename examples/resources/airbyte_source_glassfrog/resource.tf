resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a4612744-2775-4ed0-8074-e17a64885711"
  name          = "Jean McGlynn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e75a513e-0097-4779-b827-c06dd86b4fbd"
}