# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Keyspot < Formula
  desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
  homepage "https://keyspot.app"
  url "https://github.com/KeySpot/keyspot/releases/download/v1.0.9/keyspot_1.0.9_Darwin_x86_64.tar.gz"
  sha256 "db4a181befa34333f21338ff45db85a1f969585572f9d018ec5c57a35fe6bb62"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install 'keyspot'
  end
end
