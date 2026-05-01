class BloatBeGone < Formula
  desc "Fast, interactive CLI tool for cleaning Node.js workspace bloat"
  homepage "https://github.com/miainchambers/bloat-be-gone"
  url "https://github.com/miainchambers/bloat-be-gone/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "7124e60205dad37e7a0da814bb16f973ee0c640d87cab5c2cdd51f808047782d"
  license "MIT"

  def install
    bin.install "bloat-be-gone.sh" => "bloat-be-gone"
    bin.install "bin/bgb"
  end

  test do
    assert_match "bloat-be-gone v", shell_output("#{bin}/bloat-be-gone --version")
  end
end
