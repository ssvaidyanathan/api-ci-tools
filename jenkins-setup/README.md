# Jenkins Setup

This README provides instructions and screenshots of setting up the job on Jenkins

- Install Jenkins by following this [link](https://jenkins-ci.org)
- Install the following plugins 

![solarized palette](https://github.com/altercation/solarized/raw/master/img/solarized-palette.png)

- Go to Jenkins --> Manage Jenkins --> Configure system to setup the following
    - Maven
      - Put screenshot

    - Node
      - Put screenshot

    - GitHub Pull Request Plugin
      - Put screenshot

- You can download the jenkins-cli.jar from your running Jenkins instance
    Jenkins --> Manage Jenkins --> Jenkins cli
    - Use the [config.xml](https://github.com/ssvaidyanathan/api-ci-tools/blob/cricket-app/jenkins-setup/config.xml) and run the following command **java -jar jenkins-cli.jar -s http://server create-job MYNEWJOB < config.xml**
