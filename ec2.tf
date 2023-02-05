# Creating 3 EC2 Instances:
resource "aws_instance" "instance" {
  count                = length(aws_subnet.public_subnet.*.id)
  ami                  = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = element(aws_subnet.public_subnet.*.id, count.index)
  security_groups      = [aws_security_group.sg.id, ]
  key_name             = "bastionHostKey"
  #iam_instance_profile = data.aws_iam_role.iam_role.name

  tags = {
    "Name"        = "Instance-${count.index}"
    "Environment" = "Test"
    "CreatedBy"   = "Terraform"
  }

  timeouts {
    create = "10m"
  }
}

resource "local_file" "Ip_address" {
  filename = "/root/terraform-assignment/host-inventory"
  content  = <<EOT
${aws_instance.instance[0].public_ip}
${aws_instance.instance[1].public_ip}
${aws_instance.instance[2].public_ip}
  EOT

  connection {
    type        = "ssh"
    user        = "ec2-user"
    port        = "22"
    host        = element(aws_instance.instance.*.public_ip, count.index)
    private_key = file(var.ssh_private_key)
  }
}


