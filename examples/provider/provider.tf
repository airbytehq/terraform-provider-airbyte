terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.0.3"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}