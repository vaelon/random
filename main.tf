resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 12
}

output "random" {
  value = "${random_id.random.hex}"
}
