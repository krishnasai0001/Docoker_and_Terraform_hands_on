resource "local_file" "welcome" {
  filename = "welcome.txt"
  content  = "Welcome to my Terraform journey!"
}
