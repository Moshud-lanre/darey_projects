# Setting Up Secure Authentication to AWS API

The project demostrates how to set up authentication to AWs API using the following steps:

1. Creating of an IAM Role: Begin by establishing an IAM role that encapsulate the permissions required for the operation(s) you are to carry out.

![iam-role-create](screenshots/iam-role-create.png)

![iam-role-details](screenshots/iam-role-details.png)

2. Create an IAM policy: Design an IAM policy granting full access to both EC2 and S3 services.

![iam-policy-create](screenshots/iam-policy-create.png)

![iam-policy-details](screenshots/iam-policy-details.png)

3. Create an IAM User: Instantiate an IAM user named automation_user.

![iam-user](screenshots/automate_user.png)

4. Assign the User to the IAM Role: Link the newly created user to the previously created IAM role to inherit its permissions.

![iam-role-attach](screenshots/)

5. Attach the IAM Policy to the User: Ensure that the user is explicitly granted the permissions defined in IAM policy created earlier.

![policy-attach](screenshots/attach-policy.png)

6. Create Programmatic Access Credentials: Generate programmatic acess credentials -  specifically, an access key ID and a secret access key for the new user.

![programmatic-access](screenshots/programmatic-access.png)

## Demo

1. AWS-CLI installation check

![cli-check](screenshots/cli-check.png)

2. Configure AWS CLI # aws ec2 describe-regions --output table

![configure-check](screenshots/aws-configure-check.png)
