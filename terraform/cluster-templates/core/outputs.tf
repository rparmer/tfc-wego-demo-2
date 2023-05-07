output "public_subnet_ids" {
  value = join(",", module.vpc.public_subnets)
}

output "private_subnet_ids" {
  value = join(",", module.vpc.private_subnets)
}

output "subnet_ids" {
  value = join(",", concat(module.vpc.public_subnets, module.vpc.private_subnets))
}
