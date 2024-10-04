variable "chatbot_slack_info" {
  type = map(object({
    chatbot_slack_name           = string
    chatbot_slack_role_arn       = string
    chatbot_slack_workspace_id   = string
    chatbot_slack_channel_id     = string
    chatbot_slack_sns_topic_arns = list(string)
  }))
}