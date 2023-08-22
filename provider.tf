terraform {
  required_providers {
    snowmirror = {
      source  = "mikevdberge/snowmirror"
      version = ">=0.1.1"
    }
  }
}

variable "USERNAME" {}
variable "PASSWORD" {}

provider "snowmirror" {
  # Configuration options
  server_url = "https://snowmirror.qhse-professionals.nl"
  username   = var.USERNAME
  password   = var.PASSWORD
}
