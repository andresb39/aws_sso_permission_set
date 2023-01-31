data "aws_iam_policy_document" "permissions" {
  statement {
    sid = "Statement1"

    effect = "Allow"

    actions = [
      "s3:GetObject",
      "s3:GetObjectAcl",
      "s3:ListBucket",
      "s3:PutObject",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }
}