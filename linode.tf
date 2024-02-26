resource "linode_instance" "nat" {
  label     = "nat"
  image     = "linode/ubuntu22.04"
  region    = "jp-osa"
  type      = "g6-nanode-1"
  root_pass = var.instance_password

  interface {
    purpose = "public"
  }

  interface {
    purpose   = "vpc"
    subnet_id = linode_vpc_subnet.public_subnet[0].id
    ipv4 {
      vpc     = var.nat_ip
      nat_1_1 = "any"
    }
    primary = true
  }

  stackscript_id = linode_stackscript.init_forward_proxy.id
}

resource "linode_instance" "backend" {
  count     = 2
  label     = "backend${count.index}"
  image     = "linode/ubuntu22.04"
  region    = "jp-osa"
  type      = "g6-nanode-1"
  root_pass = var.instance_password

  interface {
    purpose   = "vpc"
    subnet_id = linode_vpc_subnet.backend_subnet[0].id
  }

  stackscript_id = linode_stackscript.add_proxy.id
}
