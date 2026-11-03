terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.3.2"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}