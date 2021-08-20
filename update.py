#!/usr/bin/python3

import sys
import os

version = sys.argv[1]

formula = """class Keyspot < Formula
  desc "KeySpot CLI tool for accessing records and injecting variables into an environment without needing .env files"
  homepage "https://keyspot.app"
  url "https://github.com/KeySpot/keyspot/releases/download/v{0}/keyspot_{0}_Darwin_x86_64.tar.gz"
  sha256 "db4a181befa34333f21338ff45db85a1f969585572f9d018ec5c57a35fe6bb62"
  license "MIT"

  def install
    bin.install 'keyspot'
  end
end
""".format(version)

formulaFile = open("keyspot.rb", 'w')
formulaFile.write(formula)
formulaFile.close()

os.system("git add .")
os.system('git commit -m "v{}"'.format(version))
os.system('git push origin main')
