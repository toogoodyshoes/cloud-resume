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

aws s3api put-object --bucket $BUCKET_NAME --key images/as-logo.png --body images/as-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/aws-saa.png --body images/aws-saa.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/css-logo.png --body images/css-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/dart-logo.png --body images/dart-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/figma-logo.png --body images/figma-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/github.png --body images/github.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/google-logo.png --body images/google-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/html-logo.png --body images/html-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/js-logo.png --body images/js-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/linkedin.png --body images/linkedin.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/pycharm-logo.png --body images/pycharm-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/python-logo.png --body images/python-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key images/vscode-logo.png --body images/vscode-logo.png --content-type 'image/png'

aws s3api put-object --bucket $BUCKET_NAME --key javascript/counter.js --body javascript/counter.js --content-type 'text/javascript'

# Invalidate cache
aws cloudfront create-invalidation \
    --distribution-id $DISTRIBUTION_ID \
    --paths "/*"