resource "aws_instance" "awsugn-web" {
  instance_type = "t2.micro"
  ami = "ami-51345f26"
  subnet_id = "${element(split(",",module.vpc.public_subnets),0)}"
  vpc_security_group_ids = ["${module.sg_web.security_group_id_web}"]
  tags {
    Name = "awsugn-web"
  }

}
