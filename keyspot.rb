class Keyspot < Formula
	desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
	homepage "https://keyspot.app"
	url "https://github.com/KeySpot/cli-tool/releases/download/v1.0.22/cli-tool_1.0.22_Darwin_x86_64.tar.gz"
	sha256 "2f3016b146dcb5d72572ffcebaa915df4d38c5cc8811389ba2ce0e6cf80a2113"
	license "MIT"

	def install
		bin.install 'cli-tool' => 'keyspot'
	end
end

