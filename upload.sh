#!/bin/bash

readonly BUCKET_NAME='static-resume-20224'
readonly DISTRIBUTION_ID='E3A0FRYIS4RN3Q'

# Upload objects
aws s3api put-object --bucket $BUCKET_NAME --key index.html --body index.html --content-type 'text/html'

aws s3api put-object --bucket $BUCKET_NAME --key error.html --body error.html --content-type 'text/html'

aws s3api put-object --bucket $BUCKET_NAME --key css/styles.css --body css/styles.css --content-type 'text/css'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/Inter-Light.ttf --body css/fonts/Inter-Light.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/Inter-Regular.ttf --body css/fonts/Inter-Regular.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key css/fonts/Inter-Medium.ttf --body css/fonts/Inter-Medium.ttf --content-type 'application/x-font-ttf'

aws s3api put-object --bucket $BUCKET_NAME --key images/bg.jpg --body images/bg.jpg --content-type 'image/jpg'

aws s3api put-object --bucket $BUCKET_NAME --key images/github-logo.png --body images/github-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/linkedin-logo.png --body images/linkedin-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/saa-c03.png --body images/saa-c03.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key javascript/counter.js --body javascript/counter.js --content-type 'text/javascript'

aws s3api put-object --bucket $BUCKET_NAME --key javascript/index.js --body javascript/index.js --content-type 'text/javascript'

# Invalidate cache
aws cloudfront create-invalidation \
    --distribution-id $DISTRIBUTION_ID \
    --paths "/*"