class Keyspot < Formula
  desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
  homepage "https://keyspot.app"
  url "https://github.com/KeySpot/keyspot/releases/download/v1.0.10/keyspot_1.0.10_Darwin_x86_64.tar.gz"
  sha256 "c45d52a1f7ee5bcd92264715402a8e251f8ca81f858975eac1066eab73ddb5a8"
  license "MIT"

  def install
    bin.install 'keyspot'
  end
end
