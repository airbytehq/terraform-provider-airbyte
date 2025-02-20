terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.14.1"
    }
  }
}

provider "airbyte" {
  # Configuration options
}