#!/bin/bash

# Parse options
while getopts "e:v:f" opt
do
  case $opt in
    e)
      environment=$OPTARG
      ;;
    v)
      version=$OPTARG
      ;;
    f)
      force=true
      ;;
    \?)
      echo "Invalid option"
      exit 1
      ;;
  esac
done

# Check required options
if [[ -z "$environment" || -z "$version" ]]; then
  echo "Error: -e and -v are required."
  exit 1
fi

# Validate environment
if [[ "$environment" != "dev" && "$environment" != "staging" && "$environment" != "prod" ]]; then
  echo "Error: Environment must be dev, staging, or prod."
  exit 1
fi

# Deployment output
echo "Deploying version $version to $environment environment"

if [[ "$force" == true ]]; then
  echo "Force mode enabled"
else
  echo "Force mode disabled"
fi

echo "Deployment started..."

