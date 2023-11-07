# modules/iam/main.tf

resource "aws_iam_role" "ev4rent_iam_role" {
  name = var.ev4rent_iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
      },
    ]
  })
}

# Define IAM Policies, Attachments, etc. here
