# Jenkins Setup

This README provides instructions and screenshots of setting up the job on Jenkins

This job helps to build Continuous Integration by using the GitHub Pull Request Plugin. By using this plugin, any pull request created on the repo triggers this job and goes through the complete CI cycle and also updates GitHub back with the results of the job. Once this is passed, it allows to merge the pull request.

- Install Jenkins by following this [link](https://jenkins-ci.org)
- Install the following plugins 

![plugins1](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/plugins1.png)

![plugins2](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/plugins2.png)

![plugins3](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/plugins3.png)

- Go to **Jenkins --> Manage Jenkins --> Configure system** to setup the following

![config1](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/config1.png)

![config2](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/config2.png)

![config3](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/config3.png)

![config4](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/config4.png)

- You can download the jenkins-cli.jar from your running Jenkins instance
    **Jenkins --> Manage Jenkins --> Jenkins CLI** - This will download a jenkins-cli jar
    - Use the [config.xml](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/config.xml) and run the following command **java -jar jenkins-cli.jar -s http://server create-job {jobName} < config.xml**

- In Jenkins UI, you should see a new job. 
    - Please provide your GitHub credentials under Source Code Management by clicking the Add button
    - Please provide your Apigee username and password in the Maven build step

**NOTE:** You might want to change the config to your appropriate GitHub URLs and Repo. Please provide the Git repo URL as its used to poll for pull requests on your repo.

- To test this job, create a pull request. You will see it kicked the Jenkins job as pending check

![GitHub1](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/GitHub-screenshot1.png)

- Once the Jenkins job is complete and all PASSED, GitHub pull request is ready to merge. You can see it has the details of the job run with the results of the test cases executed.

![GitHub2](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/GitHub-screenshot2.png)

The Cucumber reports on Jenkins looks like this

![Cucumber Report1](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/CucumberReport1.png)

![Cucumber Report2](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/CucumberReport2.png)


- You should be able to trigger this job manually by passing a GitHub commit id too
