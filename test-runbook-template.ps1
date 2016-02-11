Login-AzureRmAccount
$resourcegroupName = "forge-deploy-test04"
$NewGUID = [guid]::NewGuid()
$params = @{baseName="hackforge02";location="West Europe";automationScriptURI="https://raw.githubusercontent.com/vflorusso/forge-dev/master/testscript.ps1";automationScriptName="Get-AzureVMTutorial";jobId=$NewGUID}

Select-AzureRmSubscription -SubscriptionName "HackOrg - MSDN"
New-AzureRmResourceGroup -Name $resourcegroupName -Location "West Europe"

New-AzureRmResourceGroupDeployment -Name "forge-dev" -ResourceGroupName $ResourceGroupName  `
                            -TemplateFile "azuredeploy-runbook.json" `
                            -TemplateParameterObject $params