resource "panos_panorama_administrative_tag" "lan-tag" {
    name = "lan"
    color = "color5"
    comment = "LAN"
}

resource "panos_address_object" "lan-address-object" {
    name = "lan-192.168.150.0-24"
    type = "ip-netmask"
    value = "192.168.150.0/24"
    device_group = "poc-dg"
    description = "Home LAN"
    tags = [
        "lan"
    ]
}
