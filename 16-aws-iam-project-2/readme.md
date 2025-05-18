# AWS Identity and Access Management

This project aim to introduce AWS Identity and Management(IAM), which helps control who can access what in Amazon Web Services.

## Project Goals

- Understanding AWS Identity and Management(IAM) principles and components.

- Learning to create and manage IAM policies for regulating access to AWS resources securely.

- Application of IAM concepts practically to controll access within AWS.

- Explore best practices for IAM implementation and security in AWS.

## Definitions

- Identity and Access Management(IAM): It's the system that manages and organizes user identities and access permissions across an organization's resources, ensuring that the right users have access to the right resources at the right time. It helps organization improve security, streamline processes, and enable better business outcomes.

- IAM User : IAM user are like individual accounts for different people or entities withing the AWS environment.

- IAM Role: The role defines what someone or something(application/service) can do within the AWS account. Each role has a set of permissions that determine which actions can be performed and which AWS resources can be accessed. IAM roles are flexible and can be assumed by users, services, or applications as needed. They are commonly used for tasks such as granting permissions to AWS services, allowing cross-account access, or providing temporary access to external users. It enhances security and efficiency by providing controlled access to AWS resources without the need for permanent credentials.

- IAM Policy: It's a set of rules that define what actions a role can take. These rules specify the permission granted to the role and users. They are essential for maintaining security and controlling access to AWS resources, ensuring that only authorized actions are performed by users and roles within the AWS account.

- IAM Group: It's like a collection of IAM users. Instead of managing permissions for each user individually, they(users) can all be organized into groups based on their roles or responsibilities.

## Best Practices

![best-practices](screenshots/best-practice.png)

## Demo

A growth marketing consultancy company called GatoGrowFast.com wants to give some access to their employee Eric, Jack, and Ade to AWS resources.

The demo was done in two parts. The first part involves creation of a policy granting full access to EC2, then a user naned Eric was created with the policy created before attached to it.
The second part demonstraes how to create a group,policy and adding of users to the group with the policy attached.

### Part 1

1. Create Eric Policy

![eric-policy](screenshots/eric-policy.png)

2. Create User Eric and attach Eric Policy

![user-eric](screenshots/eric-user-dashboard.png)

### Part 2

1. Create "development-team" user group

![dev-group](screenshots/dev-usergrp-home.png)

2. Create users Jack & Ade and associate them with "development-team" user group

![user-jack](screenshots/user-jack-dashboard.png)

![user-ade](screenshots/user-ade-dashboard.png)

3. Create "development-policy" with full EC2 and S3 permissions.

![dev-policy](screenshots/dev-policy.png)

4. Attach "development-policy" to "development-team" user group.

![dev-policy-attach](screenshots/dev-policy-attach.png)

### Permission Validation

1. Eric's  EC2 access validation

- EC2 Launch

![eric-ec2-create](screenshots/eric-ec2-create.png)

![eric-ec2-running](screenshots/eric-ec2-running.png)

- EC2 Termination

![eric-ec2-terminate](screenshots/eric-ec2-delete.png)

2. Eric's access to S3 validation

![eric-s3-acess](screenshots/eric-s3-validate.png)

3. Eric's access to IAM console

![iam-console-eric](screenshots/eric-iam-dash.png)

4. Jack access to Ec2 validation

- EC2 Launch

![jack-ec2-create](screenshots/jack-ec2-create.png)

![jack-ec2-running](screenshots/ade-ec2-running.png)

- EC2 Termination

![jack-ec2-terminate](screenshots/ade-ec2-delete.png)

5. Jack's access to S3 validation

- Create bucket

![jack-s3-create](screenshots/jack-s3-create.png)

- Upload object

![jack-s3-upload](screenshots/jack-s3-upload.png)

- Delete object

![jack-s3-delete](screenshots/jack-s3-delete.png)

6. Jack's access to IAM console

![iam-console-jack](screenshots/jack-iam-dash.png)

7. Ade S3 access validation

- Bucket creation

![ade-s3-create](screenshots/ade-s3-create.png)

- Object Upload

![ade-object-upload](screenshots/ade-s3-upload.png)

- Object delete

![ade-object-delete](screenshots/ade-s3-delete.png)

8. Ade's EC2 access validation

- EC2 Launch

![ade-ec2-create](screenshots/ade-ec2-create.png)

![ade-ec2-running](screenshots/ade-ec2-running.png)

- EC2 Terminate

![ade-ec2-terminate](screenshots/ade-ec2-delete.png)

9. Ade's IAM console access validation

![ade-iam-console](screenshots/ade-iam-page.png)

## Project Reflection

- IAM serves as the security foundation for AWS resources, controlling access and permissions.

- IAM ensures dat protection, compliance, and prevents unathorized access.

- Learnt how to create and apply  policy to regulate resource access effectively.
