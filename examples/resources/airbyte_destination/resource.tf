resource "airbyte_destination" "my_destination" {
  configuration = { "user" : "charles" }
  definition_id = "13935752-81d7-4aef-8384-d1aae19059e7"
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
        job_type = "get_spec"
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
  workspace_id = "04343f10-e7fe-444d-875f-6683b1b0c82e"
}