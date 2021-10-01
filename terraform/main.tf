terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 4.0"
    }
  }
}

variable "heroku_app" {}
variable "heroku_email" {}
variable "heroku_api_key" {}

provider "heroku" {
  email = var.heroku_email
  api_key = var.heroku_api_key
   
}

resource "heroku_app" "default" {
  name   = var.heroku_app
  region = "us"

}