#!/bin/bash

version=$(git ls-remote --tags https://github.com/keyspot/cli-tool.git | tail -n 1 | sed 's/.*refs\/tags\///g')

binaryUrl="https://github.com/KeySpot/cli-tool/releases/download/$version/cli-tool_${version:1}_Darwin_x86_64.tar.gz"

checksum=$(curl -Ls $binaryUrl | shasum -a 256 | awk '{print $1;}')      

formula="class Keyspot < Formula\n\tdesc \"KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files\"\n\thomepage \"https://keyspot.app\"\n\turl \"${binaryUrl}\"\n\tsha256 \"${checksum}\"\n\tlicense \"MIT\"\n\n\tdef install\n\t\tbin.install 'cli-tool' => 'keyspot'\n\tend\nend\n"

echo -e $formula > "keyspot.rb"

git add .
git commit -m "$version"
git push origin main