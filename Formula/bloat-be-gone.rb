class BloatBeGone < Formula
  desc "Fast, interactive CLI tool for cleaning Node.js workspace bloat"
  homepage "https://github.com/miainchambers/bloat-be-gone"
  url "https://github.com/miainchambers/bloat-be-gone/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "bbcff8468971ada5244cd58dad2ffa322c61cfa88284cc1bb38c68d0d18511ef"
  license "MIT"

  def install
    bin.install "bloat-be-gone.sh" => "bloat-be-gone"
    bin.install "bin/bgb"
  end

  test do
    assert_match "bloat-be-gone v", shell_output("#{bin}/bloat-be-gone --version")
  end
end
