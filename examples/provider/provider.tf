terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "0.4.3"
    }
  }
}

provider "airbyte" {
  # Configuration options
}