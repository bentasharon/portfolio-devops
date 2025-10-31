output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.main.name
}

output "acr_name" {
  description = "Azure Container Registry Name"
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "ACR Login Server"
  value       = azurerm_container_registry.acr.login_server
}

output "acr_admin_username" {
  description = "ACR Admin Username"
  value       = azurerm_container_registry.acr.admin_username
  sensitive   = true
}

output "acr_admin_password" {
  description = "ACR Admin Password"
  value       = azurerm_container_registry.acr.admin_password
  sensitive   = true
}

output "aks_cluster_name" {
  description = "AKS Cluster Name"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "kube_config" {
  description = "Kubernetes Config"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive   = true
}

output "aks_fqdn" {
  description = "AKS FQDN"
  value       = azurerm_kubernetes_cluster.aks.fqdn
}