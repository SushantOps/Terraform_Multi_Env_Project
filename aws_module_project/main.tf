# Dev enviroment
module "dev-app" {
  source = "./my_app_infra"
  my_env = "dev"
  instance_type = "t2.micro"
ami = "ami-0e86e20dae9224db8"
}

# Prod Enviroment
module "prd-app" {
    source = "./my_app_infra_module"
    my_env = "prod"
    instance_type = "t2.medium"
    ami = "ami-0e86e20dae9224db8" 
}

# Stage Enviroment
module "stg-app" {
    source = "./my_app_infra_module"
    my_env = "stage"
    instance_type = "t2.small"
    ami = "ami-0e86e20dae9224db8" 
  
}