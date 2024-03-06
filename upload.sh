#!/bin/bash

# readonly PWD=`pwd`
readonly BUCKET_NAME='static-resume-20224'
readonly DISTRIBUTION_ID='E3A0FRYIS4RN3Q'

# Upload objects
aws s3api put-object --bucket $BUCKET_NAME --key index.html --body index.html --content-type 'text/html'

aws s3api put-object --bucket $BUCKET_NAME --key error.html --body error.html --content-type 'text/html'

aws s3api put-object --bucket $BUCKET_NAME --key css/index.css --body css/index.css --content-type 'text/css'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/BigShoulder-Light.ttf --body css/fonts/BigShoulder-Light.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/Inter-Regular.ttf --body css/fonts/Inter-Regular.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/JosefinSans-Regular.ttf --body css/fonts/JosefinSans-Regular.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/JuliusSansOne-Regular.ttf --body css/fonts/JuliusSansOne-Regular.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/Merriweather-Italic.ttf --body css/fonts/Merriweather-Italic.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key images/aws-logo.png --body images/aws-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/terraform.png --body images/terraform.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/aws-saa.png --body images/aws-saa.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/css-logo.png --body images/css-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/dart-logo.png --body images/dart-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/figma-logo.png --body images/figma-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/github.png --body images/github.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/google-logo.png --body images/google-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/html-logo.png --body images/html-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/js-logo.png --body images/js-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/linkedin.png --body images/linkedin.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/python-logo.png --body images/python-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/api-gateway.png --body images/api-gateway.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/bash.png --body images/bash.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/cloudfront.png --body images/cloudfront.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/dynamo-db.png --body images/dynamo-db.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/git-logo.png --body images/git-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/iam-ic.png --body images/iam-ic.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/iam.png --body images/iam.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/lambda.png --body images/lambda.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/linux-logo.png --body images/linux-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/organizations.png --body images/organizations.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/proto.png --body images/proto.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/r-53.png --body images/r-53.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/s3.png --body images/s3.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/terraform-logo.png --body images/terraform-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/ui-ux.png --body images/ui-ux.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/vpc.png --body images/vpc.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/wireframe.png --body images/wireframe.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/docker-logo.png --body images/docker-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/k8s-logo.png --body images/k8s-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/ec.png --body images/ec.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/ec2.png --body images/ec2.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/efs.png --body images/efs.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/rds.png --body images/rds.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key javascript/counter.js --body javascript/counter.js --content-type 'text/javascript'

# Invalidate cache
aws cloudfront create-invalidation \
    --distribution-id $DISTRIBUTION_ID \
    --paths "/*"