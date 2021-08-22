class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.0.21/cli-tool_1.0.21_Darwin_x86_64.tar.gz"
	sha256 "6ba920a255accb1604e8e0212d4754faa40bfec8b3ec9c6acdf2bc935057b011"
	license "MIT"

	def install
		bin.install 'keyspot'
	end
end

