class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.3/cli-tool_1.1.3_Darwin_x86_64.tar.gz"
	sha256 "52c1706d5f1992537477620bad9440f16edded43acdcf2cbfe6a3d6055ca36b4"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

