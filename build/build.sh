#!/bin/bash

ProjectID=$1 
ServiceName=$2 
BuildFolder=$3 

echo "ProjectID = "$ProjectID
echo "ServiceName = "$ServiceName
echo "BuildFolder = "$BuildFolder
echo "EXT_HOME_DIR = " $EXT_HOME_DIR
echo "FRAMEWORK = " $FRAMEWORK

cp -r ../artifacts/rtsf-at-checkout-reference-design/rtsf-at-checkout-cv-region-of-interest ./
cd ./rtsf-at-checkout-cv-region-of-interest
docker build -t cv-region-of-interest:dev ./
