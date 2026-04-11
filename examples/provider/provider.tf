terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.1.1"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}