// Find the latest available AMI for Elasticsearch
data "aws_ami" "elasticsearch" {
  filter {
    name = "state"
    values = ["available"]
  }
  filter {
    name = "tag:ImageType"
    values = ["elasticsearch6-packer-image"]
  }
  most_recent = true
}

// Find the latest available AMI for the Kibana client node
data "aws_ami" "kibana_client" {
  filter {
    name = "state"
    values = ["available"]
  }
  filter {
    name = "tag:ImageType"
    values = ["kibana6-packer-image"]
  }
  most_recent = true
}
