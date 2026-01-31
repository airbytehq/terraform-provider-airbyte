resource "airbyte_destination_surrealdb" "my_destination_surrealdb" {
  configuration = {
    surrealdb_database  = "...my_surrealdb_database..."
    surrealdb_namespace = "...my_surrealdb_namespace..."
    surrealdb_password  = "...my_surrealdb_password..."
    surrealdb_url       = "...my_surrealdb_url..."
    surrealdb_username  = "...my_surrealdb_username..."
  }
  definition_id = "2615758c-c904-459e-9fd6-c8a55cba9327"
  name          = "...my_name..."
  workspace_id  = "63dcee4f-b72d-4157-9221-df261df6b161"
}