#!/bin/bash

# Capture Harness pipeline variables
account_id="<+pipeline.variables.account_id>"
region="<+pipeline.variables.region>"
resource="<+pipeline.variables.resource>"
echo $account_id
echo $region

# ---Tagging Rule API Call---
curl -i -X POST \
  "https://app.harness.io/ccm/api/governance/enqueueAdhocV2?accountIdentifier=Harness-ACCOUNT-ID-Here" \
  -H "Content-Type: application/json" \
  -H "x-api-key: API-TOKEN-HERE" \
  -d "{
    \"targetAccounts\": [
      \"$account_id\"
    ],
    \"targetRegions\": [
      \"$region\"
    ],
    \"ruleId\": \"Paste-RuleID-here\",
    \"isDryRun\": false
  }"





