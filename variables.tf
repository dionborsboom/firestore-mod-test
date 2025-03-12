variable "project_id" {
  type        = string
  description = "Project id where datastore will be created."
}

variable "name" {
  type        = string
  description = "Names of the datastore to create."
}

variable "import" {
  type        = bool
  description = "Enable / disable the terraform import."
  #default     = false
}