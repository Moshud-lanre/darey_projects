# Essential Skills to Elevate Shell Scripting

The objective this project is to advace the knowledge of  shell scripting while also integrating and utilizing cloud services.The project focussed on 5 critical concepts, functions, arrays, environment variables, command line arguments and error handling.
The aim is to elevate the knowledgeto a level where one can confidently navigate and harness the power of both shell scripting and cloud computing. For better understanding, the project simulated a real world scenario to demostrate it.

## DEMO

### Background 

Datawise Solution  is a forward-thinking Data Science Consulting Company that specializes in deploying analytical and machinelearning environment to support data-driven decision making for its clients. Recognising the need for agility and efficiency in setting up such environments, Datawise has decided to streamline its deployment process on AWS, focusing on simplicity and automation.

### Scenario

One of Datawise Solutions' clients, a burgeoning e-commerce startup is looking to harness the power of data science to analyze customer behaviour and enhance their shopping experience. The startup wishes to deploy their data science workshop on AWS utilizing EC2 instances for computational tasks and S3 buckets for storing their vast datasets of customer interactions.

### Specific Requirementts

To meet the client's needs, Datawise plans to develop a script that automates the setup of EC2 instances and S3 buckets. The script incorporate the 5 critical shell scripting concepts mentioned earlier.

Below is the screenshot of the source code used for powering the automation

![automate-code](screenshots/code-1.png)

![automate-ec2](screenshots/ec2-code.png)

![automate-ec2-2](screenshots/ec2-code2.png)

![s3-automate](screenshots/s3-code.png)

![main-function](screenshots/main-code.png)


1. Functions: Implemented custom functions to modularize the tasks of creating EC2 instance and S3 bucket.

![func-ec2](screenshots/ec2-code.png)

![func-ec2-2](screenshots/ec2-code2.png)

![s3-func](screenshots/s3-code.png)

![main-func](screenshots/main-code.png)

EC2-running

![ec2-run-1](screenshots/ec2-running.png)

![ec2-console-proof](screenshots/ec2-console.png)


S3 bucket create success

![s3-create](screenshots/s3-create.png)

![s3-proof](screenshots/s3-console-proof.png)

2. Array: Used array to manage the list of ec2 instances and s3 buckets

![array](screenshots/declared-array.png)

3. Environment Variables: Leveraged environment variables to store configuration variables

![env-var](screenshots/env_variables.png)

4. Command Line Arguments: Accepted command line arguments to customize script behaviour

![cli-arg](screenshots/ec2-running.png)

5. Error handling: Implemented robust error handling mechanisms to catch and respond to AWS service exceptions.

![ec2-name-validation](screenshots/ec2-name-validation.png)

![s3-name-validation](screenshots/bucket-name-validation.png)

![s3-name-exists](screenshots/s3-name-exists.png)