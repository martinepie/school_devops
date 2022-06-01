provider "aws" {
  default_tags {
    tags = {
      Environment = "Test"
      Name        = "Provider Tag"
    }
  }
}

resource "aws_vpc" "example" {
  # ..other configuration...
}

output "vpc_resource_level_tags" {
  value = aws_vpc.example.tags
}

output "vpc_all_tags" {
  value = aws_vpc.example.tags_all
}