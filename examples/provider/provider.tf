terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.20.1"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}