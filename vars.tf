variable "amis" {
  type = map

  default = {
      "amazon-linux2-us-east-1" = "ami-0cff7528ff583bf9a"
      "ubuntu-20.04-us-east-2" = "ami-0960ab670c8bb45f3"
  }
}