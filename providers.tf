terraform {
  required_version = "~> 1.5"
  required_providers {
    panos = {
      source  = "paloaltonetworks/panos"
      version = "~> 1.11.1"
    }
  }
}
