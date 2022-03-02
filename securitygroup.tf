module "load_balancer_sg" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "3.10.0"

  name   = "load-balancer-sg"
  vpc_id = module.vpc.vpc_id

  ingress_cidr_blocks = ["DNS指定0.0.0.0/0"]
}

module "nginx_cluster_sg" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "3.10.0"

  name   = "nginx-cluster-sg"
  vpc_id = module.vpc.vpc_id

  ingress_cidr_blocks = ["10.0.0.0/16"]
}
