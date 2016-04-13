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

- Checkout the code
- Go to tests folder
- run "npm install"
- Update the API proxy URL in "tests/integration.test/step-definitions/cricket-app-tests.js" and "tests/integration.prod/step-definitions/cricket-app-tests.js" on line number 7
- Execute: mvn install -P{profileID} -Dorganization={Apigee Edge org name} -Dusername={Apigee Edge username} -Dpassword={ApigeeEdge Password}

# To execute this via Jenkins:

Please refer to the [README guide](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/README.md) under jenkins-setup which has the information on the job and the plugins required to setup Jenkins
