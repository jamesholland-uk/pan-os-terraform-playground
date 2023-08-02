terraform {
  required_version = "~> 1.54"
  required_providers {
    panos = {
      source  = "paloaltonetworks/panos"
      version = "~> 1.8.3"
    }
  }
}

provider "panos" {
  hostname = var.hostname
  api_key  = var.api_key
}
