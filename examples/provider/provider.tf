terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.16.3"
    }
  }
}

provider "airbyte" {
  # Configuration options
}