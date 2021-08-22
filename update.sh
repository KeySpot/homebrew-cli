#!/bin/bash

email="carlschader@gmail.com"
repoUrl="https://github.com/keyspot/cli-tool.git"
repoDir="cli-tool/"
packageName="keyspot"
maintainer="Carl Schader"
descriptionShort="Application secrets manager."
descriptionLong="The keyspot CLI tool offers an interface for accessing the KeySpot(https://keyspot.app) web app through the terminal. One of the primary functions of the keyspot CLI tool is the injection of application secrets into a program or command as environment variables."

git clone $repoUrl
cd $repoDir
git fetch --all --tags
version=$(git describe --tags --abbrev=0)
cd ../
rm -rf $repoDir

binaryUrl="https://github.com/KeySpot/keyspot/releases/download/$version/keyspot_${version:1}_Darwin_x86_64.tar.gz"

curl $binaryUrl --output binary.tar.gz

checksum=$(openssl sha256 < binary.tar.gz)

echo $checksum

formula="class Keyspot < Formula\n\tdesc \"KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files\"\n\thomepage \"https://keyspot.app\"\n\turl \"${binaryUrl}\"\n\tsha256 "${checksum}"\n\tlicense \"MIT\"\n\n\tdef install\n\t\tbin.install 'keyspot'\n\tend\nend\n"

echo -e $formula > "keyspot.rb"

rm -rf binary.tar.gz

git add .
git commit -m "$version"
git push origin main