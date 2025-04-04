variable "s3_bucket_name" {
  description = "The S3 bucket name for MWAA DAGs"
  type        = string
}

variable "dag_s3_path" {
  description = "The S3 path for DAG files"
  type        = string
}
