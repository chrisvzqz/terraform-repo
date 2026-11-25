variable "filename" {
  default = "pets.txt"
}

variable "content" {
  default     = "I love pets!"
  type        = string
  description = "the content of the file"
}

variable "prefix" {
  default = {
    "state1" = "Mr"
    "state2" = "Mrs"
  }
  type = map(any)
}

variable "separator" {
  default = "."
}

variable "length" {
  default     = "2"
  type        = number
  description = "length of the pet name"
}

variable "password_change" {
  default = "true"
  type    = bool
}

variable "estudiante" {
  type = object({
    name        = string
    age         = number
    soft_skills = list(string)
    rich        = bool
  })

  default = {
    name        = "Christian"
    age         = 22
    soft_skills = ["cool", "easy-going"]
    rich        = false
  }
}