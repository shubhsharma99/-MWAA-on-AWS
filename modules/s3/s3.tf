
resource "aws_s3_bucket" "airflow_bucket" {
  bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_policy" "airflow_bucket_policy" {
  bucket = aws_s3_bucket.airflow_bucket.id
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::${var.s3_bucket_name}",
        "arn:aws:s3:::${var.s3_bucket_name}/dags/*",
        "arn:aws:s3:::${var.s3_bucket_name}/plugins/*",
        "arn:aws:s3:::${var.s3_bucket_name}/requirements/*"
      ]
    }
  ]
}
POLICY
}
