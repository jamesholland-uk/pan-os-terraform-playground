resource "panos_panorama_administrative_tag" "lan-tag" {
  name    = "lan"
  color   = "color5"
  comment = "LAN"
  lifecycle {
    create_before_destroy = true
  }
}

resource "panos_address_object" "lan-address-object" {
  name         = "lan-192.168.150.0-24"
  type         = "ip-netmask"
  value        = "192.168.150.0/24"
  device_group = "poc-dg"
  description  = "Home LAN"
  tags = [
    "lan"
  ]
  lifecycle {
    create_before_destroy = true
  }
}

# resource "panos_security_rule_group" "rules" {
#   rule {
#     name                  = "Bad Rule"
#     source_zones          = ["inside"]
#     source_addresses      = ["any"]
#     source_users          = ["any"]
#     destination_zones     = ["outside"]
#     destination_addresses = ["any"]
#     applications          = ["any"]
#     services              = ["application-default"]
#     categories            = ["any"]
#     action                = "allow"
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }

resource "panos_security_rule_group" "rules" {
  rule {
    name                  = "Good Rule"
    source_zones          = ["inside"]
    source_addresses      = ["10.10.10.0/24"]
    source_users          = ["any"]
    destination_zones     = ["outside"]
    destination_addresses = ["any"]
    applications          = ["ssh"]
    services              = ["application-default"]
    categories            = ["any"]
    action                = "allow"
    description           = "Outbound SSH from 10-Lan"
    log_setting           = "log_forward_profile"
  }

  lifecycle {
    create_before_destroy = true
  }
}
