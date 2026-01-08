output "destination_id" {
  description = "The UUID of the created Airbyte destination"
  value       = airbyte_destination_custom.destination-dev-null.destination_id
}
