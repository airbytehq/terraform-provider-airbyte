resource "airbyte_source" "my_source" {
  configuration = { "user" : "charles" }
  definition_id = "e735c764-352e-4392-b04a-4052108601be"
  name          = "...my_name..."
  resource_allocation = {
    default = {
      cpu_limit                 = "...my_cpu_limit..."
      cpu_request               = "...my_cpu_request..."
      ephemeral_storage_limit   = "...my_ephemeral_storage_limit..."
      ephemeral_storage_request = "...my_ephemeral_storage_request..."
      memory_limit              = "...my_memory_limit..."
      memory_request            = "...my_memory_request..."
    }
    job_specific = [
      {
        job_type = "check_connection"
        resource_requirements = {
          cpu_limit                 = "...my_cpu_limit..."
          cpu_request               = "...my_cpu_request..."
          ephemeral_storage_limit   = "...my_ephemeral_storage_limit..."
          ephemeral_storage_request = "...my_ephemeral_storage_request..."
          memory_limit              = "...my_memory_limit..."
          memory_request            = "...my_memory_request..."
        }
      }
    ]
  }
  secret_id    = "...my_secret_id..."
  workspace_id = "56bc2b36-2925-428d-a458-4395acf723c5"
}