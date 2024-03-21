# Cloud Resume
A web application deployed on AWS cloud infrastructure. Check it out [here](https://lekhadenihar.dev).

## Table of Contents
- [Cloud Resume](#cloud-resume)
  - [Description](#descriptions)
  - [Codebase](#codebase)

## Descriptions
A web application deployed on AWS cloud infrastructure. Check it out [here](https://lekhadenihar.dev).

Developed the frontend with HTML, CSS and JavaScript, the web application is deployed on Amazon S3 as a static app with CloudFront as a content delivery network and Route 53 as name server for requests.

The website features a visitor counter to track count of unique visitors and updates via an REST API call on API Gateway, which acts as a proxy to the AWS Lambda function which in turn updates the value stored in DynamoDB table.

All of the infrastructre was provisioned with Infrastructue as Code.


## Codebase
### This project is distributed into 3 repositories
#### 1. [Frontend](https://github.com/toogoodyshoes/cloud-resume)
All the user interface files required to render a web application UI are hosted here.
#### 2. [Infrastructure](https://github.com/toogoodyshoes/cloud-resume-infra)
The resources required to host and distribute the web app, like Amazon S3 bucket, Cloudfront and Route 53 which have be provisioned via AWS Cloud Development Kit (CDK) are housed here. 
#### 3. [Serverless Infrastructure](https://github.com/toogoodyshoes/cloud-resume-sam)
The serverless architecture powering the visitor count functionality, consisting of API Gatway, AWS Lambda and DynamoDB, was sourced using the AWS Serverless Application Model (SAM).
