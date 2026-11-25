resource "local_file" "pet" {
  filename = "${random_pet.my-pet.id}.txt"
  content  = var.content
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix["state1"]
  separator = var.separator
  length    = var.length
}