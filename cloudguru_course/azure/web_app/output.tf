output "azurerm_webapp_service_plan_name" {
  value = azurerm_service_plan.svcplan.name
}

output "azurerm_windows_webapp_name" {
  value = azurerm_windows_web_app.appsvc.name
}
