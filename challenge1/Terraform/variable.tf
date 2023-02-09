variable "resource_group_name" {
  description = "Create new resource group"
  type        = string
  default     = "azure-arch"
}
variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
  default     = "eastus"
}
variable "mainvnetadd" {
  description = "vent address"
  type        = string
  default     = "192.168.0.0/16"    
}
variable "webtiersubnetadd" {
  description = "Web Tier address"
  type        = string
  default     = "192.168.1.0/24"      
}
variable "apptiersubnetadd" {
  description = "App Tier address"
  type        = string
  default     = "192.168.2.0/24"      
}
variable "datatiersubnetadd" {
  description = "Data Tier address"
  type        = string
  default     = "192.168.3.0/24"      
}
variable "web_host_name"{
  description = "Web host name"
  type        = string
  default     = "webserver"        
}
variable "web_username" {
  description = "Web user name"
  type        = string
  default     = "webadmin"      
}
variable "web_os_password" {
  description = "Web os password"
  type        = string
  default     = "web@123"      
}
variable "app_host_name"{
  description = "app host name"
  type        = string
  default     = "appserver"        
}
variable "app_username" {
  description = "app user name"
  type        = string
  default     = "appadmin"      
}
variable "app_os_password" {
  description = "app os password"
  type        = string
  default     = "03jpvaroRrGQXOkkEdfeJiNIfrANmgj"      
}

variable "primary_database" {
  description = "primary database"
  type        = string
  default     = "3tierarchdemo-rahulrajvv"    
}
variable "primary_database_version" {
  description = "primary database version"
  type        = string
  default     = "12.0"   
}
variable "primary_database_admin" {
  description = "primary database admin"
  type        = string
  default     = "sqladmin"      
}
variable "primary_database_password" {
  description = "primary password admin"
  type        = string
  default     = "BCCGIrwjC6559u3L8HJXvMpUHyHhFkV"     
}