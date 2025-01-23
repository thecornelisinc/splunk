# Splunk Ec2 Instance

resource "aws_instance" "main" {
  ami                  = "ami-0df8c184d5f6ae949"
  availability_zone    = "us-east-1a"
  disable_api_stop     = true
  instance_type        = "t2.micro"
  iam_instance_profile = "Adminaccecss"

}

output "InstanceIdofMainEC2Instance" {
  value = resource.aws_instance.main.public_ip
}