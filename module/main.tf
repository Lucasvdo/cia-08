module "lucas_module" {
    source = "../app/modules/turma08_app"
    cidr_block = "10.0.101.0/24"
    vpc_name = "prod-server-vpc"
    project = "prod-server"
    instance_type_app = var.env
    create_zone_dns = false
}

output "ip_app" {
  value = module.lucas_module.app_public_ip
}

