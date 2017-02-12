provider "aws" {
  access_key =  "AKIAIURYV4FVTN2IR7BA"
  secret_key =  "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"
  region = "us-west-2"
}

resource "aws_instance" "exaample" {
  ami = "ami-34259654"
  instance_type = "t2.micro"
}

resources "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
