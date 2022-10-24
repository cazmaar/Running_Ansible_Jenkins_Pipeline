output "ec2-public-ip" {
  value = module.ansible_server.ec2-details.public_ip
}
output "ec2-public-ip1" {
  value = module.ansible_server.ec2-1-details.public_ip
}
# output "ec2-public-ip2" {
#   value = module.ansible_server.ec2-2-details.public_ip
# }