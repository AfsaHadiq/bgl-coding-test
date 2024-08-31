provider "aws" {
  region = var.aws_region
}

locals {
  users = var.users
}

# Create IAM groups
resource "aws_iam_group" "group" {
  for_each = toset(flatten([for user in local.users : user.groups]))

  name = each.value
}

# Create IAM users
resource "aws_iam_user" "user" {
  for_each = local.users

  name = each.value.username
}

# Create group memberships for users
resource "aws_iam_user_group_membership" "membership" {
  for_each = local.users

  user   = aws_iam_user.user[each.key].name
  groups = each.value.groups
}

