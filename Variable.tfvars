Variable Definitiions .tfvars (blocks 1,2,3,4 should be in seperate files)

#1-	Main.tf
resource "aws_iam_group" "developers" {
  name = "dev-group"
}

resource "aws_iam_group" "developers-users" {
  name = "${var.username}-user"
}



#2-	Variable.tf
variable "username" {

}

#3-	Prod.tfvars
username = "prod"


#4 – dev.tfvars
username = "dev"
