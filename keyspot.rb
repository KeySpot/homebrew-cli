class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.2/cli-tool_1.1.2_Darwin_x86_64.tar.gz"
	sha256 "021f78678cf599c5214cf6fdacf0eee4c593b69618ec49975f358838d2bf5c3f"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

