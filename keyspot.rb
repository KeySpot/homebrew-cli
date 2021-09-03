class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.0/cli-tool_1.1.0_Darwin_x86_64.tar.gz"
	sha256 "0579474bd47838c12bbdad88843e95d1296bf30864d059801c793e67022cf347"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

