## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider\_aws)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_sns_topic.sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) (resource)
- [aws_sns_topic_subscription.sns_topic_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_sns_topic_subscription_protocol"></a> [sns\_topic\_subscription\_protocol](#input\_sns\_topic\_subscription\_protocol)

Description: The protocol to use. If 'firehose', then 'subscription\_role\_arn' is required.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_general_tags"></a> [general\_tags](#input\_general\_tags)

Description: General tags provided for the whole module

Type: `map(string)`

Default: `{}`

### <a name="input_sns_topic_application_failure_feedback_role_arn"></a> [sns\_topic\_application\_failure\_feedback\_role\_arn](#input\_sns\_topic\_application\_failure\_feedback\_role\_arn)

Description: IAM role for failure feedback

Type: `string`

Default: `null`

### <a name="input_sns_topic_application_success_feedback_role_arn"></a> [sns\_topic\_application\_success\_feedback\_role\_arn](#input\_sns\_topic\_application\_success\_feedback\_role\_arn)

Description: The IAM role permitted to receive success feedback for this topic.

Type: `string`

Default: `null`

### <a name="input_sns_topic_application_success_feedback_sample_rate"></a> [sns\_topic\_application\_success\_feedback\_sample\_rate](#input\_sns\_topic\_application\_success\_feedback\_sample\_rate)

Description: Percentage of success to sample

Type: `number`

Default: `null`

### <a name="input_sns_topic_archive_policy"></a> [sns\_topic\_archive\_policy](#input\_sns\_topic\_archive\_policy)

Description: The message archive policy for FIFO topics.

Type: `string`

Default: `null`

### <a name="input_sns_topic_content_based_deduplication"></a> [sns\_topic\_content\_based\_deduplication](#input\_sns\_topic\_content\_based\_deduplication)

Description: Enables content-based deduplication for FIFO topics.

Type: `bool`

Default: `null`

### <a name="input_sns_topic_delivery_policy"></a> [sns\_topic\_delivery\_policy](#input\_sns\_topic\_delivery\_policy)

Description: The SNS delivery policy.

Type: `string`

Default: `null`

### <a name="input_sns_topic_display_name"></a> [sns\_topic\_display\_name](#input\_sns\_topic\_display\_name)

Description: The display name for the topic

Type: `string`

Default: `null`

### <a name="input_sns_topic_fifo_topic"></a> [sns\_topic\_fifo\_topic](#input\_sns\_topic\_fifo\_topic)

Description: Boolean indicating whether or not to create a FIFO (first-in-first-out) topic.

Type: `bool`

Default: `false`

### <a name="input_sns_topic_firehose_failure_feedback_role_arn"></a> [sns\_topic\_firehose\_failure\_feedback\_role\_arn](#input\_sns\_topic\_firehose\_failure\_feedback\_role\_arn)

Description: IAM role for failure feedback

Type: `string`

Default: `null`

### <a name="input_sns_topic_firehose_success_feedback_role_arn"></a> [sns\_topic\_firehose\_success\_feedback\_role\_arn](#input\_sns\_topic\_firehose\_success\_feedback\_role\_arn)

Description: The IAM role permitted to receive success feedback for this topic.

Type: `string`

Default: `null`

### <a name="input_sns_topic_firehose_success_feedback_sample_rate"></a> [sns\_topic\_firehose\_success\_feedback\_sample\_rate](#input\_sns\_topic\_firehose\_success\_feedback\_sample\_rate)

Description: Percentage of success to sample

Type: `number`

Default: `null`

### <a name="input_sns_topic_http_failure_feedback_role_arn"></a> [sns\_topic\_http\_failure\_feedback\_role\_arn](#input\_sns\_topic\_http\_failure\_feedback\_role\_arn)

Description: IAM role for failure feedback

Type: `string`

Default: `null`

### <a name="input_sns_topic_http_success_feedback_role_arn"></a> [sns\_topic\_http\_success\_feedback\_role\_arn](#input\_sns\_topic\_http\_success\_feedback\_role\_arn)

Description: The IAM role permitted to receive success feedback for this topic.

Type: `string`

Default: `null`

### <a name="input_sns_topic_http_success_feedback_sample_rate"></a> [sns\_topic\_http\_success\_feedback\_sample\_rate](#input\_sns\_topic\_http\_success\_feedback\_sample\_rate)

Description: Percentage of success to sample

Type: `number`

Default: `null`

### <a name="input_sns_topic_kms_master_key_id"></a> [sns\_topic\_kms\_master\_key\_id](#input\_sns\_topic\_kms\_master\_key\_id)

Description: The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK.

Type: `string`

Default: `null`

### <a name="input_sns_topic_lambda_failure_feedback_role_arn"></a> [sns\_topic\_lambda\_failure\_feedback\_role\_arn](#input\_sns\_topic\_lambda\_failure\_feedback\_role\_arn)

Description: IAM role for failure feedback

Type: `string`

Default: `null`

### <a name="input_sns_topic_lambda_success_feedback_role_arn"></a> [sns\_topic\_lambda\_success\_feedback\_role\_arn](#input\_sns\_topic\_lambda\_success\_feedback\_role\_arn)

Description: The IAM role permitted to receive success feedback for this topic.

Type: `string`

Default: `null`

### <a name="input_sns_topic_lambda_success_feedback_sample_rate"></a> [sns\_topic\_lambda\_success\_feedback\_sample\_rate](#input\_sns\_topic\_lambda\_success\_feedback\_sample\_rate)

Description: Percentage of success to sample

Type: `number`

Default: `null`

### <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name)

Description: The name of the topic.

Type: `string`

Default: `null`

### <a name="input_sns_topic_policy"></a> [sns\_topic\_policy](#input\_sns\_topic\_policy)

Description: The fully-formed AWS policy as JSON.

Type: `string`

Default: `null`

### <a name="input_sns_topic_signature_version"></a> [sns\_topic\_signature\_version](#input\_sns\_topic\_signature\_version)

Description: If SignatureVersion should be 1 (SHA1) or 2 (SHA256). The signature version corresponds to the hashing algorithm used while creating the signature of the notifications, subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.

Type: `number`

Default: `null`

### <a name="input_sns_topic_sqs_failure_feedback_role_arn"></a> [sns\_topic\_sqs\_failure\_feedback\_role\_arn](#input\_sns\_topic\_sqs\_failure\_feedback\_role\_arn)

Description: IAM role for failure feedback

Type: `string`

Default: `null`

### <a name="input_sns_topic_sqs_success_feedback_role_arn"></a> [sns\_topic\_sqs\_success\_feedback\_role\_arn](#input\_sns\_topic\_sqs\_success\_feedback\_role\_arn)

Description: The IAM role permitted to receive success feedback for this topic.

Type: `string`

Default: `null`

### <a name="input_sns_topic_sqs_success_feedback_sample_rate"></a> [sns\_topic\_sqs\_success\_feedback\_sample\_rate](#input\_sns\_topic\_sqs\_success\_feedback\_sample\_rate)

Description: Percentage of success to sample

Type: `number`

Default: `null`

### <a name="input_sns_topic_subscription_confirmation_timeout_in_minutes"></a> [sns\_topic\_subscription\_confirmation\_timeout\_in\_minutes](#input\_sns\_topic\_subscription\_confirmation\_timeout\_in\_minutes)

Description: Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure.

Type: `number`

Default: `null`

### <a name="input_sns_topic_subscription_delivery_policy"></a> [sns\_topic\_subscription\_delivery\_policy](#input\_sns\_topic\_subscription\_delivery\_policy)

Description: JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription.

Type: `string`

Default: `null`

### <a name="input_sns_topic_subscription_endpoint_auto_confirms"></a> [sns\_topic\_subscription\_endpoint\_auto\_confirms](#input\_sns\_topic\_subscription\_endpoint\_auto\_confirms)

Description: Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty).

Type: `bool`

Default: `false`

### <a name="input_sns_topic_subscription_filter_policy"></a> [sns\_topic\_subscription\_filter\_policy](#input\_sns\_topic\_subscription\_filter\_policy)

Description: JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the SNS docs for more details.

Type: `string`

Default: `null`

### <a name="input_sns_topic_subscription_filter_policy_scope"></a> [sns\_topic\_subscription\_filter\_policy\_scope](#input\_sns\_topic\_subscription\_filter\_policy\_scope)

Description: Whether the filter\_policy applies to MessageAttributes (default) or MessageBody.

Type: `string`

Default: `"MessageAttributes"`

### <a name="input_sns_topic_subscription_raw_message_delivery"></a> [sns\_topic\_subscription\_raw\_message\_delivery](#input\_sns\_topic\_subscription\_raw\_message\_delivery)

Description: Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property).

Type: `bool`

Default: `false`

### <a name="input_sns_topic_subscription_redrive_policy"></a> [sns\_topic\_subscription\_redrive\_policy](#input\_sns\_topic\_subscription\_redrive\_policy)

Description: JSON String with the redrive policy that will be used in the subscription. Refer to the SNS docs for more details.

Type: `string`

Default: `null`

### <a name="input_sns_topic_subscription_replay_policy"></a> [sns\_topic\_subscription\_replay\_policy](#input\_sns\_topic\_subscription\_replay\_policy)

Description: JSON String with the archived message replay policy that will be used in the subscription.

Type: `string`

Default: `null`

### <a name="input_sns_topic_subscription_subscription_role_arn"></a> [sns\_topic\_subscription\_subscription\_role\_arn](#input\_sns\_topic\_subscription\_subscription\_role\_arn)

Description: ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Required if protocol is 'firehose'.

Type: `string`

Default: `null`

### <a name="input_sns_topic_tags"></a> [sns\_topic\_tags](#input\_sns\_topic\_tags)

Description: Key-value map of resource tags. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.

Type: `map(string)`

Default: `null`

### <a name="input_sns_topic_tracing_config"></a> [sns\_topic\_tracing\_config](#input\_sns\_topic\_tracing\_config)

Description: Tracing mode of an Amazon SNS topic. Valid values: 'PassThrough', 'Active'.

Type: `string`

Default: `null`

## Outputs

The following outputs are exported:

### <a name="output_sns_topic_arn"></a> [sns\_topic\_arn](#output\_sns\_topic\_arn)

Description: The ARN of the SNS topic

### <a name="output_sns_topic_beginning_archive_time"></a> [sns\_topic\_beginning\_archive\_time](#output\_sns\_topic\_beginning\_archive\_time)

Description: The oldest timestamp at which a FIFO topic subscriber can start a replay.

### <a name="output_sns_topic_owner"></a> [sns\_topic\_owner](#output\_sns\_topic\_owner)

Description: The AWS Account ID of the SNS topic owner

### <a name="output_sns_topic_subscription_arn"></a> [sns\_topic\_subscription\_arn](#output\_sns\_topic\_subscription\_arn)

Description: ARN of the subscription.

### <a name="output_sns_topic_subscription_owner_id"></a> [sns\_topic\_subscription\_owner\_id](#output\_sns\_topic\_subscription\_owner\_id)

Description: AWS account ID of the subscription's owner.
