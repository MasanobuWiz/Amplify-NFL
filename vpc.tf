module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.33.0"

  name = "masa-vpc"
  cidr = "IP/収容数"

  azs             = ["ap-northeast-1a", "ap-northeast-1c"]
  public_subnets  = ["推奨IP10.0.101.0/24", "推奨IP10.0.102.0/24"]
  private_subnets = ["設定IP10.0.1.0/24", "設定IP10.0.2.0/24"]

  map_public_ip_on_launch = true

  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false
}
