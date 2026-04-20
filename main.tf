provider "local" {}

resource "local_file" "devops_file" {
  content  = "DevOps Project using Terraform without AWS"
  filename = "output.txt"
}