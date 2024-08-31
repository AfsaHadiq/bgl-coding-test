output "usernames" {
  value = [for user in aws_iam_user.user : user.name]
}

output "groups" {
  value = [for group in aws_iam_group.group : group.name]
}

