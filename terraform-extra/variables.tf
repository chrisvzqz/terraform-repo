variable "filename" {
  default = "pets.txt"
}

variable "content" {
  default = "I love pets!"
  type = string
  description = "the content of the file"
}

variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list
}

variable "separator" {
  default = "."
}

variable "length" {
  default = "2"
  type = number
  description = "length of the pet name"
}

variable "password_change" {
  default = "true"
  type = bool
}