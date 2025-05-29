# AWS S3 Mini Project

## Project Goals

The primary goal of this project is to get familiar with Amazon S3(Simple Storage Service) and  its fundamental concepts.

## Project Outcomes

By the end of the project, the demo will have shown the practical experience in working with S3.
The following will be demonstrated:

- Creation and configuration of S3 buckets using the AWS Management Console.

- Uploading of files and management of objects within S3 buckets.

- Understand the importance of versioning and its implication for data management.

- Configuration of permissions to control access to S3 objects.

- Implemwntation of lifecycle policies to automate data management tasks and optimize storage costs.

## Demostration

1. Creation of S3 bucket using AWS console

![create-bucket](screenshots/create-bucket.png)


2. Uploading file to S3 bucket

Content of the local file uploaded

![object-content](screenshots/s3-object-1.png)

File uploaded successfully

![file-upload](screenshots/S3-object-upload.png)

3. Object versioning: S3 versioning allows keeping of multiple versions of an object in the same bucket. This feature helps protect against accidental deletion or overwrite. The prevous version(s) of an object can be restored if needed.

![update-content](screenshots/s3-object-update.png)

Current state of object versioning(disabled)

![version-disable](screenshots/versioning-disabled.png)

Enable object versioning

![enable-versioning](screenshots/version-enabled.png)

S3 Object version

[object-versioning](screenshots/s3-demo-version.png)


4. Permission configuration: Access to the objects in the S3 bucket was configured using Access Control Lists(ACLss) and Bucket Policy. Control can also be achieved using Identity and Access Management(IAM) at user or group level.

ACL configuration

![default-acl](screenshots/block-access.png)

![allow-acl](screenshots/allow-access.png)

Policy configuration

![policy-config](screenshots/bucket-policy.png)

Accessing Object version 1 from the public url

![version1=access](screenshots/version1-text.png)

Acessing Object version 2 through public url

![version2-access](screenshots/version2-text.png)

5. Bucket Lifecycle: A lifecycle rule was created to transition the objects between storage classes after 30 days of its creation.

![lifecycle-rule](screenshots/s3-demo-lifecycle.png)

![lifecycle-rule2](screenshots/s3-demo-lifecycle2.png)

This rule will automatically move files from standard to Standard-IA storage class after 30 days.This helps to save money because Standard-IA is cheaper that the default storage option.
