#!/usr/bin/python3

import sys
import os
import re

version = sys.argv[1]
homebrewDir = "/usr/local/Homebrew"

binaryUrl = "https://github.com/KeySpot/keyspot/releases/download/v{0}/keyspot_{0}_Darwin_x86_64.tar.gz".format(version)

os.system("brew create {}".format(binaryUrl))

formulaPath = os.path.join(homebrewDir, "Library", "Taps", "homebrew", "homebrew-core", "Formula", "keyspot.rb")

formulaFile = open(formulaPath, 'r')
checksum = re.search('sha256 (.+?)\n', formulaFile.read()).group(1)
formulaFile.close()


formula = """class Keyspot < Formula
  desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
  homepage "https://keyspot.app"
  url "{0}"
  sha256 {1}
  license "MIT"

  def install
    bin.install 'keyspot'
  end
end
""".format(binaryUrl, checksum)

formulaFile = open("keyspot.rb", 'w')
formulaFile.write(formula)
formulaFile.close()

os.system("rm -rf {}".format(formulaFile))

os.system("git add .")
os.system('git commit -m "v{}"'.format(version))
os.system('git push origin main')
