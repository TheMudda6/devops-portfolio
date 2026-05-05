# AWS Assignment 4 — IAM & Security

## Overview

In this project, I implemented AWS Identity and Access Management (IAM) to move away from using the root account and apply the principle of least privilege.

The goal was to create users with controlled access and validate that permissions are enforced correctly.

---

## Objectives

* Create IAM users
* Assign permissions using policies
* Understand least privilege access
* Test and validate restricted permissions

---

## 1. Created IAM Admin User

* Created an IAM user with administrative permissions
* Used this user instead of the root account for daily tasks

---

## 2. Created Limited IAM User

* Created a new IAM user: `devops-limited-user`
* Enabled AWS Management Console access
* Assigned only read-only permissions:

  * AmazonEC2ReadOnlyAccess
  * AmazonS3ReadOnlyAccess
  * CloudFrontReadOnlyAccess

---

## 3. Tested Access Permissions

Logged in as the limited user and verified:

* Able to view EC2, S3, and CloudFront resources ✅
* Able to access dashboards and configurations ✅

---

## 4. Validated Permission Restrictions

Attempted to launch an EC2 instance using the limited user.

The action failed as expected due to insufficient permissions.

This confirms that IAM policies are correctly restricting access.

![IAM Permission Denied](screenshots/iam-permission-denied.png)

---

## Key Learnings

* Root account should not be used for daily operations
* IAM enables secure access control in AWS
* Principle of least privilege is critical for security
* Access to a service does not guarantee permission to perform actions
* Always validate permissions by testing real scenarios

---

## Cleanup

* Retained IAM users for continued learning
* Avoided unnecessary elevated permissions

---

## Outcome

Successfully implemented IAM best practices by creating controlled-access users and validating permission boundaries in a real AWS environment.

