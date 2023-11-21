terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.3.5"
    }
  }
}

provider "airbyte" {
  # Configuration options
}