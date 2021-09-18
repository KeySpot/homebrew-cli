class Keyspot < Formula
	desc "Tool for managing environment variables"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.3.1/cli-tool_1.3.1_Darwin_x86_64.tar.gz"
	sha256 "4714d438268440880bf54c361eaa922983b03095a6005a8ecc695f83fad41fa5"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

