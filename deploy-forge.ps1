Login-AzureRmAccount
$resourcegroupName = "forge-deploy-test06"
Select-AzureRmSubscription -SubscriptionName "vitolo-internal"
New-AzureRmResourceGroup -Name $resourcegroupName -Location "West Europe"
New-AzureRmResourceGroupDeployment -Name "forge-dev" `
            -ResourceGroupName $resourcegroupName `
            -TemplateFile "azuredeploy.json" `
            -TemplateParameterFile "azuredeploy.parameters.json"
New-AzureRmResourceGroupDeployment -Name "forge-dev-sb" `
            -ResourceGroupName $resourcegroupName `
            -TemplateFile "azuredeploy-sb.json" `
            -TemplateParameterObject @{"namespaceName" = "vitotestsb"; "location" = "West Europe"}
New-AzureRmResourceGroupDeployment -Name "forge-dev-classicvnet" `
            -ResourceGroupName $resourcegroupName `
            -TemplateFile "azuredeploy-classicnetwork.json" `
            -TemplateParameterObject @{"vnetName" = "vitotestcvnet1"; "location" = "West Europe"}
