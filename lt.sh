#!/bin/bash

# Set LambdaTest Credentials
# export LT_USERNAME="your_lambda_test_username_here"
# export LT_ACCESS_KEY="your_lambda_test_access_key_here"

# Set the LambdaTest Selenium Grid URL with the credentials
export SELENIUM_REMOTE_URL="https://${LT_USERNAME}:${LT_ACCESS_KEY}@hub.lambdatest.com/wd/hub"


# Define Selenium Remote Capabilities with the necessary details including WebSocketUrl
export SELENIUM_REMOTE_CAPABILITIES="{ \
  \"browserName\": \"MicrosoftEdge\", \
  \"version\": \"latest\", \
  \"seleniumVersion\": \"latest\", \
  \"platform\": \"MacOS Ventura\", \
  \"seCdp\": true, \
  \"webSocketUrl\": true, \
  \"LT:Options\": { \
    \"build\": \"Siraj experiments\", \
    \"name\": \"PW-Exp\", \
    \"video\": true, \
    \"network\": true, \
    \"console\": true, \
    \"webSocketUrl\": true \
  } \
}"

# Echo back the variables (optional, for verification)
echo "SELENIUM_REMOTE_URL set to: $SELENIUM_REMOTE_URL"
echo "SELENIUM_REMOTE_CAPABILITIES set to: $SELENIUM_REMOTE_CAPABILITIES"

DEBUG=pw:browser* npx playwright test 
