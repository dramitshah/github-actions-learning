resource "azurerm_resource_group" "main" {
  name     = "rg-github-actions-${var.environment}"
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    deployed_by = "github-actions"
  }
}
