provider "aws" {
  version = "~> 2.0"
  region = "us-east-2"
}

provider "aws" {
  alias = "us-east-1"
  version = "~> 2.0"
  region = "us-east-1"
}

# terraform show (mostra como ta sua estrutura/ambiente na AWS)

#testecommit2
#testecommit3

