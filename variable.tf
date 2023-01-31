variable "gcp_region" {
    type = string
    description = "GCP provider region"
    default = "us-west1"
}

variable "gcp_project" {
    type = string
    description = "Project to use for this configuration"
    default = ""
    
}