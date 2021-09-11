class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.5/cli-tool_1.1.5_Darwin_x86_64.tar.gz"
	sha256 "5ef0b8508701abf01ac6e8fa2d6fe2ada70a978e90baa279055e319e89696769"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

