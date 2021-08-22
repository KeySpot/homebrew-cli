class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/keyspot/releases/download/v1.0.21/keyspot_1.0.21_Darwin_x86_64.tar.gz"
	sha256 0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5
	license "MIT"

	def install
		bin.install 'keyspot'
	end
end

