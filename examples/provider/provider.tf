terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.3.3"
    }
  }
}

provider "airbyte" {
  # Configuration options
}