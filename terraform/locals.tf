locals {
  name_prefix = "${var.tags["Owner"]}_${var.tags["Group"]}_${var.tags["Environment"]}"

  default_tags = merge(
    var.tags,
    {
      Project = local.name_prefix
    }
  )

  security_group_rules = [
    {
      description = "Allow SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Allow OpenVPN (UDP 1194)"
      from_port   = 1194
      to_port     = 1194
      protocol    = "udp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "Allow FTP (TCP 21)"
      from_port   = 21
      to_port     = 21
      protocol    = "tcp"
      cidr_blocks = ["30.8.0.0/24"]
    },
    {
      description = "Allow HTTP (TCP 80)"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}