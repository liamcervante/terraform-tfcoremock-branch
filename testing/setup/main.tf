
resource "tfcoremock_simple_resource" "resource" {}

output "id" {
    value = tfcoremock_simple_resource.resource.id
}

output "string" {
    value = tfcoremock_simple_resource.resource.string
}

output "number" {
    value = tfcoremock_simple_resource.resource.number
}

output "bool" {
    value = tfcoremock_simple_resource.resource.bool
}
