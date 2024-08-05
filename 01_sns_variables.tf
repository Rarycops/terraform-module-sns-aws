variable "sns_topic_name" {
  description = "The name of the topic."
  type        = string
  validation {
    condition     = var.sns_topic_name == null || sns_topic_fifo_topic ? can(regex("^[a-zA-Z0-9_-]{1,256}(\\.fifo)?$", var.sns_topic_name)) : can(regex("^[a-zA-Z0-9_-]{1,256}$", var.sns_topic_name))
    error_message = "The name must be between 1 and 256 characters long, made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens. For a FIFO topic, the name must end with the .fifo suffix."
  }
  default = null
}

variable "sns_topic_fifo_topic" {
  description = "Boolean indicating whether or not to create a FIFO (first-in-first-out) topic."
  type        = bool
  default     = false
}

variable "sns_topic_display_name" {
  description = "The display name for the topic"
  type        = string
  default     = null
}

variable "sns_topic_policy" {
  description = "The fully-formed AWS policy as JSON."
  type        = string
  default     = null
}

variable "sns_topic_delivery_policy" {
  description = "The SNS delivery policy."
  type        = string
  default     = null
}

variable "sns_topic_application_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic."
  type        = string
  default     = null
}

variable "sns_topic_application_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  type        = number
  default     = null
}

variable "sns_topic_application_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = string
  default     = null
}

variable "sns_topic_http_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic."
  type        = string
  default     = null
}

variable "sns_topic_http_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  type        = number
  default     = null
}

variable "sns_topic_http_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = string
  default     = null
}

variable "sns_topic_kms_master_key_id" {
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK."
  type        = string
  default     = null
}

variable "sns_topic_signature_version" {
  description = "If SignatureVersion should be 1 (SHA1) or 2 (SHA256). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS."
  type        = number
  default     = null
  validation {
    condition     = var.sns_topic_signature_version == null || var.sns_topic_signature_version == 1 || var.sns_topic_signature_version == 2
    error_message = "The signature_version must be either 1 (SHA1) or 2 (SHA256)."
  }
}

variable "sns_topic_tracing_config" {
  description = "Tracing mode of an Amazon SNS topic. Valid values: 'PassThrough', 'Active'."
  type        = string
  default     = null
  validation {
    condition     = var.sns_topic_tracing_config == null || var.sns_topic_tracing_config == "PassThrough" || var.sns_topic_tracing_config == "Active"
    error_message = "The sns_topic_tracing_config must be either 'PassThrough' or 'Active'."
  }
}

variable "sns_topic_archive_policy" {
  description = "The message archive policy for FIFO topics."
  type        = string
  default     = null
}

variable "sns_topic_content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO topics."
  type        = bool
  default     = null
}

variable "sns_topic_lambda_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic."
  type        = string
  default     = null
}

variable "sns_topic_lambda_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  type        = number
  default     = null
}

variable "sns_topic_lambda_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = string
  default     = null
}

variable "sns_topic_sqs_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic."
  type        = string
  default     = null
}

variable "sns_topic_sqs_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  type        = number
  default     = null
}

variable "sns_topic_sqs_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = string
  default     = null
}

variable "sns_topic_firehose_success_feedback_role_arn" {
  description = "The IAM role permitted to receive success feedback for this topic."
  type        = string
  default     = null
}

variable "sns_topic_firehose_success_feedback_sample_rate" {
  description = "Percentage of success to sample"
  type        = number
  default     = null
}

variable "sns_topic_firehose_failure_feedback_role_arn" {
  description = "IAM role for failure feedback"
  type        = string
  default     = null
}

variable "sns_topic_tags" {
  description = "Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(string)
  default     = null
}

variable "sns_topic_subscription_protocol" {
  description = "The protocol to use. If 'firehose', then 'subscription_role_arn' is required."
  type        = string
  validation {
    condition     = can(regex("^(http|https|email|email-json|sms|sqs|application|lambda|firehose)$", var.sns_topic_subscription_protocol))
    error_message = "The protocol must be one of: http, https, email, email-json, sms, sqs, application, lambda, firehose."
  }
}

variable "sns_topic_subscription_subscription_role_arn" {
  description = "ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Required if protocol is 'firehose'."
  type        = string
  default     = null
  validation {
    condition     = var.sns_topic_subscription_protocol != "firehose" || (var.sns_topic_subscription_protocol == "firehose" && var.sns_topic_subscription_subscription_role_arn != null)
    error_message = "The subscription_role_arn must be provided if the protocol is 'firehose'."
  }
}

variable "sns_topic_subscription_confirmation_timeout_in_minutes" {
  description = "Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure."
  type        = number
  validation {
    condition     = var.sns_topic_subscription_confirmation_timeout_in_minutes == null || (var.sns_topic_subscription_confirmation_timeout_in_minutes != null && (var.sns_topic_subscription_protocol == "http" || var.sns_topic_subscription_protocol == "https"))
    error_message = "Only applicable for http and https protocols"
  }
  default = null
}

variable "sns_topic_subscription_delivery_policy" {
  description = "JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription."
  type        = string
  validation {
    condition     = ((var.sns_topic_subscription_protocol != "http" && var.sns_topic_subscription_protocol != "https") && var.sns_topic_subscription_delivery_policy == null) || ((var.sns_topic_subscription_protocol == "http" || var.sns_topic_subscription_protocol == "https") && var.sns_topic_subscription_delivery_policy != null)
    error_message = "The delivery_policy can only be set if the protocol is 'http' or 'https'."
  }
  default = null
}

variable "sns_topic_subscription_endpoint_auto_confirms" {
  description = "Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty)."
  type        = bool
  default     = false
}

variable "sns_topic_subscription_filter_policy" {
  description = "JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the SNS docs for more details."
  type        = string
  default     = null
}

variable "sns_topic_subscription_filter_policy_scope" {
  description = "Whether the filter_policy applies to MessageAttributes (default) or MessageBody."
  type        = string
  validation {
    condition     = var.sns_topic_subscription_filter_policy_scope == "MessageAttributes" || var.sns_topic_subscription_filter_policy_scope == "MessageBody"
    error_message = "Valid values are MessageAttributes (default) or MessageBody."
  }
  default = "MessageAttributes"
}

variable "sns_topic_subscription_raw_message_delivery" {
  description = "Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property)."
  type        = bool
  default     = false
}

variable "sns_topic_subscription_redrive_policy" {
  description = "JSON String with the redrive policy that will be used in the subscription. Refer to the SNS docs for more details."
  type        = string
  default     = null
}

variable "sns_topic_subscription_replay_policy" {
  description = "JSON String with the archived message replay policy that will be used in the subscription."
  type        = string
  default     = null
}
