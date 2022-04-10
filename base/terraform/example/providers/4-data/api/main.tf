provider "aws" {
  region = "us-east-1"
  
}

data "http" "api_viacep" {
  url = "https://viacep.com.br/ws/01001000/json/"
  request_headers = {
    Accept = "application/json"
  }
}

