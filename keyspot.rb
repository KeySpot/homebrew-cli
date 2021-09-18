class Keyspot < Formula
	desc "Tool for managing environment variables"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.2.1/cli-tool_1.2.1_Darwin_x86_64.tar.gz"
	sha256 "1423ecf895677c75275c113b4f2d88e8ce71c18613bb2e2cd964c1048ca0bf15"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

