class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.0.27/cli-tool_1.0.27_Darwin_x86_64.tar.gz"
	sha256 "8be1b5dcfabd2c8b7521e37792c1e70723e6ae5a653d85c843af0a3be6f04218"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

