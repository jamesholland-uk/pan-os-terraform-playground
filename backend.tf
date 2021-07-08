terraform {
  backend "gcs" {
    bucket  = "james-lab-panos-terraform"
    prefix  = "pan-os-lab-state"
  }
}
