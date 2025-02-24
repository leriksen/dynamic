```
> terraform plan
data.azurerm_client_config.current: Reading...
azurerm_resource_group.rg: Refreshing state... [id=/subscriptions/743b758a-f6e7-4823-b706-950a64a6c9f9/resourceGroups/dynamic]
data.azurerm_client_config.current: Read complete after 0s [id=Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wNGIwNzc5NS04ZGRiLTQ2MWEtYmJlZS0wMmY5ZTFiZjdiNDY7b2JqZWN0SWQ9Zjk0MDkwYjMtOTQ2MS00MmU4LThiN2ItOGU4MTE4YjIwNGY0O3N1YnNjcmlwdGlvbklkPTc0M2I3NThhLWY2ZTctNDgyMy1iNzA2LTk1MGE2NGE2YzlmOTt0ZW5hbnRJZD00ZTVkZmY0OC1hZjJjLTRlN2UtYTVmYS1iYjY1NjBlYzA0YjY=]
azurerm_storage_account.sa: Refreshing state... [id=/subscriptions/743b758a-f6e7-4823-b706-950a64a6c9f9/resourceGroups/dynamic/providers/Microsoft.Storage/storageAccounts/sampleleif]

No changes. Your infrastructure matches the configuration.
```
```
> TF_VAR_access=false terraform plan
data.azurerm_client_config.current: Reading...
azurerm_resource_group.rg: Refreshing state... [id=/subscriptions/743b758a-f6e7-4823-b706-950a64a6c9f9/resourceGroups/dynamic]
data.azurerm_client_config.current: Read complete after 0s [id=Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wNGIwNzc5NS04ZGRiLTQ2MWEtYmJlZS0wMmY5ZTFiZjdiNDY7b2JqZWN0SWQ9Zjk0MDkwYjMtOTQ2MS00MmU4LThiN2ItOGU4MTE4YjIwNGY0O3N1YnNjcmlwdGlvbklkPTc0M2I3NThhLWY2ZTctNDgyMy1iNzA2LTk1MGE2NGE2YzlmOTt0ZW5hbnRJZD00ZTVkZmY0OC1hZjJjLTRlN2UtYTVmYS1iYjY1NjBlYzA0YjY=]
azurerm_storage_account.sa: Refreshing state... [id=/subscriptions/743b758a-f6e7-4823-b706-950a64a6c9f9/resourceGroups/dynamic/providers/Microsoft.Storage/storageAccounts/sampleleif]

Planning failed. Terraform encountered an error while generating this plan.

╷
│ Error: Missing required argument
│
│   with azurerm_storage_account.sa,
│   on storage_account.tf line 4, in resource "azurerm_storage_account" "sa":
│    4:   account_tier             = var.access ? "Standard" : null
│
│ The argument "account_tier" is required, but no definition was found.
╵
```