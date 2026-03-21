terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.0.2"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}