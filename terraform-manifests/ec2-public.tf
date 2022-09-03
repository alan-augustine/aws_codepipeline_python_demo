module "ec2-instance" {
  # Ref: https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/v4.1.4/examples/complete/main.tf
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.1.4"
  name = "mytest"
  ami = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0fdb73b8924436949"]
  # Ref: https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/dbf16a26e3077ac1b9ebc7f674f81bd710c438fa/variables.tf#L91
  # not available in complete exaple
  iam_instance_profile = "CodeDeploy-S3-Access"
  user_data = filebase64("${path.module}/ec2-user-data.sh")
}