class BloatBeGone < Formula
  desc "Fast, interactive CLI tool for cleaning Node.js workspace bloat"
  homepage "https://github.com/miainchambers/bloat-be-gone"
  url "https://github.com/miainchambers/bloat-be-gone/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "88ec887b76f5ce7c9153ddfad438242f467162413e91e3f1ea79eab5e0c2311d"
  license "MIT"

  def install
    bin.install "bloat-be-gone.sh" => "bloat-be-gone"
    bin.install "bin/bgb"
  end

  test do
    assert_match "bloat-be-gone v", shell_output("#{bin}/bloat-be-gone --version")
  end
end
