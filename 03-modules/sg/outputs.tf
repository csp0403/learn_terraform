output "vpc_id" {
  value = aws_security_group.allow_tls.arn
}
output "sg_id" {
  value = aws_security_group.allow_tls.id
}

output "ou" {
  value = aws_security_group.allow_tls.vpc_id
}