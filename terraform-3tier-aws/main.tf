 module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
}

module "web" {
  source = "./modules/web"

  vpc_id = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
}

module "app" {
  source = "./modules/app"

  vpc_id = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}

module "db" {
  source = "./modules/db"

  vpc_id = module.vpc.vpc_id
  db_subnets = module.vpc.db_subnets
}
