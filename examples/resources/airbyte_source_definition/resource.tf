resource "airbyte_source_definition" "my_sourcedefinition" {
  docker_image_tag  = "...my_docker_image_tag..."
  docker_repository = "...my_docker_repository..."
  documentation_url = "https://fuzzy-alert.name/"
  name              = "...my_name..."
  workspace_id      = "2f247b56-4c74-41ae-8045-9f64dd27512e"
}