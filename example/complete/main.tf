module sso_permissions_set {
  source = "../.."
  group_name = "JB_Example"
  description = "Permissions for DevOps Team"
  inline_policy = data.aws_iam_policy_document.permissions.json
  policy_attachment = [ "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess" ]
  display_name = "MyGroupGroso..."
  description_identity = "Dream team"
  target_id = "473530283000"


  tags = {
    owner   = "DevOps"
    managed = "Terraform"
  }

}
