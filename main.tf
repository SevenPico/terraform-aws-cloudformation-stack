resource "aws_cloudformation_stack" "default" {
  count = module.context.enabled ? 1 : 0

  name = module.context.id
  tags = module.context.tags

  capabilities       = var.capabilities
  notification_arns  = var.notification_arns
  on_failure         = var.on_failure
  parameters         = var.parameters
  policy_body        = var.policy_body
  template_body      = var.template_body
  template_url       = var.template_url
  timeout_in_minutes = var.timeout_in_minutes
}
