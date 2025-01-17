variable "template_url" {
  type        = string
  description = "Amazon S3 bucket URL location of a file containing the CloudFormation template body. Maximum file size: 460,800 bytes"
}

variable "parameters" {
  type        = map(string)
  description = "Key-value map of input parameters for the Stack Set template. (_e.g._ map(\"BusinessUnit\",\"ABC\")"
  default     = {}
}

variable "capabilities" {
  type        = list(string)
  description = "A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND"
  default     = []
}

variable "on_failure" {
  type        = string
  default     = "ROLLBACK"
  description = "Action to be taken if stack creation fails. This must be one of: `DO_NOTHING`, `ROLLBACK`, or `DELETE`"
}

variable "timeout_in_minutes" {
  type        = number
  default     = 30
  description = "The amount of time that can pass before the stack status becomes `CREATE_FAILED`"
}

variable "policy_body" {
  type        = string
  default     = ""
  description = "Structure containing the stack policy body. Conflicts w/ policy_url."
}

variable "policy_url" {
  type        = string
  default     = ""
  description = "Location of a file containing the stack policy. Conflicts w/ policy_body."
}

variable "iam_role_arn" {
  type        = string
  default     = ""
  description = "The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials."
}

variable "notification_arns" {
  type    = list(string)
  default = []
}

variable "template_body" {
  type    = string
  default = ""
}

