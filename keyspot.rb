class Keyspot < Formula
	desc "Tool for managing environment variables"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.3.0/cli-tool_1.3.0_Darwin_x86_64.tar.gz"
	sha256 "306985c4771545423684b8cfa893984666e6f9ebf2ea8e7e3a694c4a1647f04b"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

