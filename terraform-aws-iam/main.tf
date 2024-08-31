module "iam" {
  source    = "./iam-module"
  aws_region = "ap-southeast-2" # Sydney
  users = {
    "user1" = {
      username = "jerome"
      groups   = ["group1", "group2"]
    },
    "user2" = {
      username = "marc"
      groups   = ["group2", "group3"]
    }
  }
}

output "usernames" {
  value = module.iam.usernames
}

output "groups" {
  value = module.iam.groups
}

