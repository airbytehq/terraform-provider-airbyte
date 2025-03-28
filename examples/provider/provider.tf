terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.16.2"
    }
  }
}

provider "airbyte" {
  # Configuration options
}