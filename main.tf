terraform {
  required_providers {
    tfcoremock = {
      source = "hashicorp/tfcoremock"
    }
  }
}

# https://app.terraform.io/app/liamcervante/registry/modules/private/liamcervante/branch/tfcoremock/0.1.0
# terraform test -cloud-run=app.terraform.io/liamcervante/branch/tfcoremock

data "tfcoremock_simple_resource" "external" {
  id = var.id
}

resource "tfcoremock_simple_resource" "internal" {
  string = data.tfcoremock_simple_resource.external.string
  number = data.tfcoremock_simple_resource.external.number
  bool   = data.tfcoremock_simple_resource.external.bool
}
