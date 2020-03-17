resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
  dynamic "route" {
    for_each = var.route
    content {
      cidr_block                = lookup(route.value, "cidr_block", null)
      egress_only_gateway_id    = lookup(route.value, "egress_only_gateway_id", null)
      gateway_id                = lookup(route.value, "gateway_id", null)
      instance_id               = lookup(route.value, "instance_id", null)
      ipv6_cidr_block           = lookup(route.value, "ipv6_cidr_block", null)
      nat_gateway_id            = lookup(route.value, "nat_gateway_id", null)
      network_interface_id      = lookup(route.value, "network_interface_id", null)
      transit_gateway_id        = lookup(route.value, "transit_gateway_id", null)
      vpc_peering_connection_id = lookup(route.value, "vpc_peering_connection_id", null)
    }
  }
  tags             = var.tags
  propagating_vgws = var.propagating_vgws
}