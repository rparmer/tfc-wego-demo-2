output "public_subnets" {
  value       = join(",", module.vpc.public_subnets)
}

output "private_subnets" {
  value       = join(",", module.vpc.private_subnets)
}