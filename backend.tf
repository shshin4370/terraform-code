terraform {
  backend "s3" {
    bucket       = "terraform-state-628146193305-ap-northeast-2-3e9f7c6f"
    key          = "network/vpc/terraform.tfstate"
    region       = "ap-northeast-2"
    encrypt      = true
    use_lockfile = true
  }
}
