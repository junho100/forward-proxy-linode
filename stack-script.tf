resource "linode_stackscript" "init_forward_proxy" {
  label       = "forward"
  description = "initialize forward proxy with apache"
  script = templatefile("./files/init-forward-proxy.sh.tftpl", {
    subent = var.backend_cidr_blocks[0]
  })
  images = ["linode/ubuntu22.04"]
}

resource "linode_stackscript" "add_proxy" {
  label       = "add-proxy"
  description = "add proxy to forward proxy"
  script = templatefile("./files/add-proxy.sh.tftpl", {
    proxy = var.nat_ip
  })
  images = ["linode/ubuntu22.04"]
}
