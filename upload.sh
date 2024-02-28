#!/bin/bash

# readonly PWD=`pwd`
readonly BUCKET_NAME='static-resume-20224'
readonly DISTRIBUTION_ID='E3A0FRYIS4RN3Q'

# Upload objects
aws s3api put-object --bucket $BUCKET_NAME --key index.html --body index.html --content-type 'text/html'

aws s3api put-object --bucket $BUCKET_NAME --key error.html --body error.html --content-type 'text/html'

aws s3api put-object --bucket $BUCKET_NAME --key css/index.css --body css/index.css --content-type 'text/css'

aws s3api put-object --bucket $BUCKET_NAME --key javascript/counter.js --body javascript/counter.js --content-type 'text/javascript'

# Invalidate cache
aws cloudfront create-invalidation \
    --distribution-id $DISTRIBUTION_ID \
    --paths "/*"