terraform {
  //required_version = "~> 0.14"

  required_providers {

    panos = {
      source  = "paloaltonetworks/panos"
      version = "~> 1.8.3"
    }

    http = {
      version = "~> 2.1"
    }

    google = {
      version = "~> 3.74.0"
    }

  }
}

provider "panos" {
  hostname = var.hostname
  api_key  = var.api_key
}

provider "google" {
  project     = "jholland-root-project"
  region      = "us-west1"
}