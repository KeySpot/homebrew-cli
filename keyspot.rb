class Keyspot < Formula
	desc "Tool for managing environment variables"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.1.7/cli-tool_1.1.7_Darwin_x86_64.tar.gz"
	sha256 "42484f2f5ea1fa2bcccc692ec2d84d72fbbae2e96a288f471913d3b78d826c6d"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

