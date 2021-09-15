class Keyspot < Formula
	desc "CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.6/cli-tool_1.1.6_Darwin_x86_64.tar.gz"
	sha256 "2cb5becc42e8e91b3496b5ff6f4871756afdeb739b8b267c36e664617c7d532d"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

