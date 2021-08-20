class Keyspot < Formula
  desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
  homepage "https://keyspot.app"
  url "https://github.com/KeySpot/keyspot/releases/download/v1.0.13/keyspot_1.0.13_Darwin_x86_64.tar.gz"
  sha256 "7a44737b208bf78dbd32d7fb456945dcd75b823ce69f48849510ea06d2b02479"
  license "MIT"

  def install
    bin.install 'keyspot'
  end
end
