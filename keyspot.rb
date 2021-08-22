class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.0.21/cli-tool_1.0.21_Darwin_x86_64.tar.gz"
	sha256 "d5ef7ed3447e11a4a830dfa8577895bdd2969580360aeff64f5226a867225e8a"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

