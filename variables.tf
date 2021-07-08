variable "hostname" {
  type = string
  default = ""
}

variable "api_key" {
  type = string
  default = ""
  sensitive = true
}
