output "vpc_id" {
  value = aws_security_group.allow_tls.arn
}