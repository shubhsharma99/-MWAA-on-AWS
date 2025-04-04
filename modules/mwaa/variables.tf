

variable "dag_s3_path" {
  description = "S3 path where DAGs are stored (e.g., s3://my-airflow-bucket/dags)"
  type        = string
}

variable "s3_bucket_name" {
  description = "S3 bucket name for Apache Airflow DAGs"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs for MWAA"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs for MWAA"
  type        = list(string)
}

variable "execution_role_arn" {
  description = "ARN of the IAM role used by MWAA"
  type        = string
}
variable "mwaa_env_name" {
  description = "MWAA environment name"
  type        = string
}
variable "airflow_version" {
  description = "Airflow version for MWAA"
  type        = string
}