provider "aws" {
region = "us-east-2"
profile = "default"
}
resource "aws_instance" "web" {
  ami           = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "my_terr_instance"
  }

 vpc_security_group_ids = ["sg-09031eb2d090dad80"]
 subnet_id = "subnet-03c91db4b89b0a488"
 associate_public_ip_address  = "true"
}
