terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.19.1"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}