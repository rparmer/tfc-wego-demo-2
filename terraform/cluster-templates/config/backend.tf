terraform {
  cloud {
    hostname = "app.terraform.io"
    organization = "terraform-controller-demo"

    workspaces {
      name = "tfc-wge-demo-config"
    }
  }
}
