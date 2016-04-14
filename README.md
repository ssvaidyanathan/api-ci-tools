# api-ci-tools

This project can be used as a template to set up Continuous integration for API proxies that is being built in [Apigee Edge](https://edge.apigee.com)

Uses the following:
- [Jenkins](jenkins-ci.org)
- Maven
    - Static Code Analysis - JSLint
    - API Proxy validation and deployment
    - BDD Test Case execution using [Apickli](https://github.com/apickli/apickli)
- Test Case Reports using Cucumber plugin

# To execute as Standalone:

- Clone the repo - "git clone https://github.com/ssvaidyanathan/api-ci-tools.git"
- Go to tests folder
- run "npm install"
- Update the API proxy URL in "tests/integration.test/step-definitions/cricket-app-tests.js" and "tests/integration.prod/step-definitions/cricket-app-tests.js" on line number 7
        
        var url = '{Apigee Proxy URL}';

- Execute: mvn install -P{profileID} -Dorganization={Apigee Edge org name} -Dusername={Apigee Edge username} -Dpassword={ApigeeEdge Password}

The profileID can be found in the pom.xml "&lt;profiles&gt; section". In this case we have two profiles - "test" and "prod"

**Note:** If the API proxy is running, you can run the Cucumber test features by executing
    "tests/node_modules/cucumber/bin/cucumber.js --format json:reports.json tests/integration.test"

# To execute this via Jenkins (using the GitHub Pull request plugin):

Please refer to the [README guide](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/README.md) under jenkins-setup which has the information on the job and the plugins required to setup Jenkins
