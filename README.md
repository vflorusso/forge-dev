# forge-dev

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fvflorusso%2Fforge-dev%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fvflorusso%2Fforge-dev%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>





## Website Settings

### GuiShell

Configurations

    "netFrameworkVersion": "v4.0",
    "phpVersion": "",
    "pythonVersion": "",

AppSettings

    "guishell:adminApiSecret": "api secret"

Connectionstring

		"guiShell": {
					"value": "mongodb://host:port/database",
					"type": 3
				}

### Distribution

Configurations

    "netFrameworkVersion": "v4.0",
    "phpVersion": "",
    "pythonVersion": "",

AppSettings

    "cms:guiShellHost": "guishell url",
    "cms:guiShellApiSecret": "api secret",
    "cms:guiShellAppName": "app name",
    "rootUrl": "self url",
    "cms:azureServiceBusConnection": "SB connectionstring"

### BackEnd

Configurations

    "netFrameworkVersion": "v4.0",
    "phpVersion": "",
    "pythonVersion": "",
    "alwaysOn": true,
		"webSocketsEnabled": true,

AppSettings

	Same as distribution

### FrontEnd

Configurations

    "netFrameworkVersion": "v4.0",
    "phpVersion": "",
    "pythonVersion": "",
    "alwaysOn": true,
		"webSocketsEnabled": true,

AppSettings

	None, managed by developers



### mongodb

Check socket timeout
Authentication...


### Other

Move passwords as parameters
Vnet for websites