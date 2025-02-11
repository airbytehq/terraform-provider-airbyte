terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.13.2"
    }
  }
}

provider "airbyte" {
  # Configuration options
}