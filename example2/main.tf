provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSSPN1d4QV31/tzzIQhjyGqJ4CZKNyK8nyYflaDhhTOItRr42u0GCcwPrhSAF1rtvoE0pzr+FAIcRpQrWvRQB4Uafgkjlj/S+YDy8Z8GxEiigz4XxA6UJNx7plGNZ6Yix+PQxRf03vGUgXpmJjHT2j5F4kAF72cAidlG8GoNQWmWh4x6n+6afc529NctRTe2ezb8W6dBrdU3uzXEmp0wqJntj9JLPPujR0mZeorix5S1l3QRNQEE19t0WW2qxMys/2zbFke6yGfUx3sjwgb860pwkZMpcwxKXZ7Yhd0R2dR720adt8ue9ANnWXwazy2Ao4eXU0oiUYxPuAtA+991c3 ec2-user@Bastion"
}

resource "aws_instance" "exmaple" {
  key_name      = "bastion"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
