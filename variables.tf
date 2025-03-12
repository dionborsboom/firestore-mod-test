variable "project_id" {
  type        = string
  description = "Project id where datastore will be created."
}

variable "name" {
  type        = string
  description = "Names of the datastore to create."
}

variable "pitr" {
  type        = string
  description = "Whether to enable the PITR feature on this database."
  #default     = false
}

variable "import" {
  type        = bool
  description = "Enable / disable the terraform import."
  #default     = false
}