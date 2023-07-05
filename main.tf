resource "aws_cloudformation_stack" "default" {
  count = module.context.enabled ? 1 : 0

  name = module.context.id
  tags = module.context.tags

  template_url = var.template_url
  parameters   = var.parameters
  capabilities = var.capabilities

  on_failure         = var.on_failure
  timeout_in_minutes = var.timeout_in_minutes

  policy_body = var.policy_body
}
