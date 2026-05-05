terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.2.0"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}