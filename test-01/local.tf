resource "local_file" "mypets" {
  filename = var.filename
  content  = var.content

}

resource "random_pet" "my-pets" {
  prefix    = var.prefix
  separator = var.separator
  length    = var.length

}