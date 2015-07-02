module "sg_web" {
  source = "github.com/terraform-community-modules/tf_aws_sg//sg_web"
  vpc_id = "${module.vpc.vpc_id}"
  security_group_name = "awsugn-web"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  aws_region = "${var.aws_region}"
  source_cidr_block = "0.0.0.0/0"
}
