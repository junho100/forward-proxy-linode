resource "linode_vpc_subnet" "public_subnet" {
  count  = length(var.public_cidr_blocks)
  vpc_id = linode_vpc.vpc.id
  label  = "public-subnet-${count.index + 1}"
  ipv4   = var.public_cidr_blocks[count.index]
}

resource "linode_vpc_subnet" "backend_subnet" {
  count  = length(var.backend_cidr_blocks)
  vpc_id = linode_vpc.vpc.id
  label  = "backend-subnet-${count.index + 1}"
  ipv4   = var.backend_cidr_blocks[count.index]
}
