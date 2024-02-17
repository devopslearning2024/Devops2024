resource "local_file" "mypets" {
  filename = "pets.txt"
  content  = "We love pets"

}

resource "random_pets" "my-pets" {
  prefix    = "Mrs"
  separator = "."
  length    = "1"

}