Login-AzureRmAccount
$resourcegroupName = "forge-deploy-test05"
Select-AzureRmSubscription -SubscriptionName "vitolo-internal"
New-AzureRmResourceGroup -Name $resourcegroupName -Location "West Europe"
New-AzureRmResourceGroupDeployment -Name "forge-dev" `
            -ResourceGroupName $resourcegroupName `
            -TemplateFile "azuredeploy.json" `
            -TemplateParameterFile "azuredeploy.parameters.json"
