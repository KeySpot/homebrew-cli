class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.4/cli-tool_1.1.4_Darwin_x86_64.tar.gz"
	sha256 "f80cd9e806bd168f0c8217eb564e725a6d30bbc3ca65707ac9a0fa9919f9858d"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

