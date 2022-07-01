variable "amis" {
  type = map

  default = {
      "amazon-linux2-us-east-1" = "ami-0cff7528ff583bf9a"
      "ubuntu-20.04-us-east-2" = "ami-0960ab670c8bb45f3"
  }
}

variable "cdris_acesso_remoto" {
  type = list
  default = ["177.67.159.140/32","177.68.159.140/32"]
}

variable "key_name" {
  type = map

  default = {
      "key-us-east-1" = "aws-terraform-nv"
      "key-us-east-2" = "aws-terraform"
  }
}