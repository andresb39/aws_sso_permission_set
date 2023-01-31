data "aws_ssoadmin_instances" "sso" {}

data "aws_identitystore_group" "identitystore_group" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  filter {
    attribute_path  = "DisplayName"
    attribute_value = var.display_name
  }
}