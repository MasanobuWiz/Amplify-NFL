variable vpc {
  type = map(string)
  default = {
    A = "AのIP情報",
    B = "BのIP情報"
  }
}

module A {
  source = "./modules/vpc"

  env      = var.env
  basename = var.basename
  name     = "A"
  cidr     = var.vpc["A"]
}
module B {
  source = "./modules/vpc"

  env      = var.env
  basename = var.basename
  name     = "B"
  cidr     = var.vpc["B"]
}
