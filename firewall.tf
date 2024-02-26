resource "linode_firewall" "nat_firewall" {
  label = "nat-fw"

  inbound {
    label    = "allow-nat-traffic"
    action   = "ACCEPT"
    protocol = "TCP"
    ports    = "8080"
    ipv4     = var.backend_cidr_blocks
  }

  inbound_policy = "DROP"

  outbound_policy = "ACCEPT"

  linodes = [linode_instance.nat.id]
}
