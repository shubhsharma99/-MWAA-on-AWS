resource "aws_mwaa_environment" "this" {
  name                = var.mwaa_env_name  # Use the variable
  execution_role_arn  = var.execution_role_arn
  dag_s3_path         = var.dag_s3_path
  airflow_version     = var.airflow_version
  source_bucket_arn   = "arn:aws:s3:::${var.s3_bucket_name}"
  environment_class   = "mw1.small"

  network_configuration {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }

  logging_configuration {
    dag_processing_logs {
      enabled   = true
      log_level = "INFO"
    }
    scheduler_logs {
      enabled   = true
      log_level = "INFO"
    }
    task_logs {
      enabled   = true
      log_level = "INFO"
    }
    webserver_logs {
      enabled   = true
      log_level = "INFO"
    }
    worker_logs {
      enabled   = true
      log_level = "INFO"
    }
  }
}
