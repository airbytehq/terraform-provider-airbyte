terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.1.4"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}