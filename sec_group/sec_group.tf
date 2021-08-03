  resource "aws_security_group" "external_by_terraform" {
  name        = "external_by_terraform"
  description = "Allow sec inbound traffic"
  


  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
    
  }

 ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["50.194.68.230/32"]
    
  }

 ingress {
    description      = "TLS from VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["50.194.68.231/32"]


 }
 ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

 }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  

  
}


/*resource "aws_vpc" "default" {
  cidr_block = "10.1.0.0/16"
}
resource "aws_security_group" "allow_tls" {
vpc_id = aws_vpc.default.id
 */