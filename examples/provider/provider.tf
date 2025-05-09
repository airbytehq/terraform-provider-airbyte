terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.18.0"
    }
  }
}

provider "airbyte" {
  # Configuration options
}