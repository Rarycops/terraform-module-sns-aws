resource "aws_sns_topic" "sns_topic" {
  name                                     = var.sns_topic_name
  fifo_topic                               = var.sns_topic_fifo_topic
  display_name                             = var.sns_topic_display_name
  policy                                   = var.sns_topic_policy
  delivery_policy                          = var.sns_topic_delivery_policy
  application_success_feedback_role_arn    = var.sns_topic_application_success_feedback_role_arn
  application_success_feedback_sample_rate = var.sns_topic_application_success_feedback_sample_rate
  application_failure_feedback_role_arn    = var.sns_topic_application_failure_feedback_role_arn
  http_success_feedback_role_arn           = var.sns_topic_http_success_feedback_role_arn
  http_success_feedback_sample_rate        = var.sns_topic_http_success_feedback_sample_rate
  http_failure_feedback_role_arn           = var.sns_topic_http_failure_feedback_role_arn
  kms_master_key_id                        = var.sns_topic_kms_master_key_id
  signature_version                        = var.sns_topic_signature_version
  tracing_config                           = var.sns_topic_tracing_config
  archive_policy                           = var.sns_topic_archive_policy
  content_based_deduplication              = var.sns_topic_content_based_deduplication
  lambda_success_feedback_role_arn         = var.sns_topic_lambda_success_feedback_role_arn
  lambda_success_feedback_sample_rate      = var.sns_topic_lambda_success_feedback_sample_rate
  lambda_failure_feedback_role_arn         = var.sns_topic_lambda_failure_feedback_role_arn
  sqs_success_feedback_role_arn            = var.sns_topic_sqs_success_feedback_role_arn
  sqs_success_feedback_sample_rate         = var.sns_topic_sqs_success_feedback_sample_rate
  sqs_failure_feedback_role_arn            = var.sns_topic_sqs_failure_feedback_role_arn
  firehose_success_feedback_role_arn       = var.sns_topic_firehose_success_feedback_role_arn
  firehose_success_feedback_sample_rate    = var.sns_topic_firehose_success_feedback_sample_rate
  firehose_failure_feedback_role_arn       = var.sns_topic_firehose_failure_feedback_role_arn
  tags                                     = merge(var.general_tags, var.sns_topic_tags)
}

resource "aws_sns_topic_subscription" "sns_topic_subscription" {
  endpoint                        = "value"
  protocol                        = var.sns_topic_subscription_protocol
  subscription_role_arn           = var.sns_topic_subscription_subscription_role_arn
  topic_arn                       = aws_sns_topic.sns_topic.arn
  confirmation_timeout_in_minutes = var.sns_topic_subscription_confirmation_timeout_in_minutes
  delivery_policy                 = var.sns_topic_subscription_delivery_policy
  endpoint_auto_confirms          = var.sns_topic_subscription_endpoint_auto_confirms
  filter_policy                   = var.sns_topic_subscription_filter_policy
  filter_policy_scope             = var.sns_topic_subscription_filter_policy_scope
  raw_message_delivery            = var.sns_topic_subscription_raw_message_delivery
  redrive_policy                  = var.sns_topic_subscription_redrive_policy
  replay_policy                   = var.sns_topic_subscription_replay_policy
}
