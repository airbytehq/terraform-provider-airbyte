resource "airbyte_destination_definition" "my_destinationdefinition" {
  docker_image_tag  = "...my_docker_image_tag..."
  docker_repository = "...my_docker_repository..."
  documentation_url = "https://tidy-newsprint.name"
  name              = "...my_name..."
  workspace_id      = "b2d427cd-1e14-44a7-9eca-d09b2237ee28"
}