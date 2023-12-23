output "public_ip" {
  value = {
    for k, v in aws_instance.DevSeCops: k=> v.public_ip
  }
}