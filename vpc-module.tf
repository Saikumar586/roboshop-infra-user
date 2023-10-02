module "this" {

    source = "../aws-terraform-advanced-module" #H:\devopstools\repos\Terraform\aws-terraform-advanced module
    
    cidr_block = var.cidr_block
    enable_dns_hostnames = var.enable_dns_hostnames
    enable_dns_support = var.enable_dns_support
    default_tags = var.default_tags
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
    project_name = var.project_name


    }
  
