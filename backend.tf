terraform {
  backend "gcs" {
    bucket  = "james-lab-panos-terraform"
    prefix  = "state"
  }
}
