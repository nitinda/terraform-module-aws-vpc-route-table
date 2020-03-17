resource "aws_route_table" "route_table" {
  vpc_id           = "${var.vpc_id}"
  route            = "${var.route}"
  tags             = "${var.tags}"
  propagating_vgws = "${var.propagating_vgws}"
}