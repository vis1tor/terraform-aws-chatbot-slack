resource "awscc_chatbot_slack_channel_configuration" "this" {
  for_each = { for k, v in var.chatbot_slack_info : k => v if v.chatbot_slack_name != "" }

  configuration_name = each.value.chatbot_slack_name
  iam_role_arn       = each.value.chatbot_slack_role_arn
  slack_workspace_id = each.value.chatbot_slack_workspace_id
  slack_channel_id   = each.value.chatbot_slack_channel_id
  sns_topic_arns     = each.value.chatbot_slack_sns_topic_arns
  guardrail_policies = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  user_role_required = "false"
}