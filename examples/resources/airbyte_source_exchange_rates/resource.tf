resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "EUR"
    ignore_weekends = true
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "3242ccd2-763a-40d3-8eb9-1c3df2593495"
  name          = "Phyllis Smitham"
  secret_id     = "...my_secret_id..."
  workspace_id  = "258f30a2-7183-4b00-ac70-45956c03ec7b"
}