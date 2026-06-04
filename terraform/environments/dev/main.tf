data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source       = "../../modules/vpc"
  project_name = "food-delivery"
  environment  = "dev"
  vpc_cidr     = "10.0.0.0/16"

  public_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  availability_zones = slice(
    data.aws_availability_zones.available.names,
    0,
    2
  )

  private_app_subnets = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]

  private_data_subnets = [
    "10.0.21.0/24",
    "10.0.22.0/24"
  ]

}
