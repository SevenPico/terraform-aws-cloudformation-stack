

module "cloudformation_stack" {
  source             = "../../"
  context            = module.context.self

  notification_arns  = []
  on_failure         = ""
  policy_body        = ""
  template_body      = ""
  timeout_in_minutes = 30
  template_url       = var.template_url
  parameters         = var.parameters
  capabilities       = var.capabilities
}
