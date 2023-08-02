variable "panos_hostname" {
  type    = string
  default = ""
}

variable "panos_api_key" {
  type      = string
  default   = ""
  sensitive = true
}
