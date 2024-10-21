module "ec2" {
  source = "../terraform-aws-ec2"

  # These are variables expected module , not arguments of resource defination
  # You can also create variables or else you can directly use values here
  ami_id             = var.ami_something
  instance_type      = "t3.small"
  security_group_ids = ["sg-048c74456592b8877"]
  instance_names     = ["MySQL", "Backend", "Frontend"]

}