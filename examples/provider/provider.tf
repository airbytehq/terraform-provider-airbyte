terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.7.0"
    }
  }
}

provider "airbyte" {
  # Configuration options
}