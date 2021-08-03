
output "sec_group_id" {
  value = aws_security_group.sec.id
}



output "attached_vpc" {
  value = "mainvpc"
}

output "region" {
  value = "us-east-1"
}