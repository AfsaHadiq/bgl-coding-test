variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
}

variable "users" {
  description = "Map of users and their associated groups"
  type        = map(object({
    username = string
    groups   = list(string)
  }))
}

