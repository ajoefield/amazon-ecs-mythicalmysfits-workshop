
#! /bin/bash

set -eu


echo "Fetching CloudFormation outputs..."
script/fetch-outputsv2

echo "Populating DynamoDB table..."
script/load-ddb

echo "Uploading static site to S3..."
script/upload-sitev2

echo "Installing ECR Cred Helper..."
script/credhelperv2

echo "Success!"