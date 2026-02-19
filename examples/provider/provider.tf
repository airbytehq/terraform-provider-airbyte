terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "1.0.0-rc7"
    }
  }
}

provider "airbyte" {
  server_url = "..." # Optional
}