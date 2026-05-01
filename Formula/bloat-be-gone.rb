class BloatBeGone < Formula
  desc "Fast, interactive CLI tool for cleaning Node.js workspace bloat"
  homepage "https://github.com/miainchambers/bloat-be-gone"
  url "https://github.com/miainchambers/bloat-be-gone/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "524a8274f05d419395fb4824c4d3c855a531379655e87801aee6d1ff79dc0683"
  license "MIT"

  def install
    bin.install "bloat-be-gone.sh" => "bloat-be-gone"
    bin.install "bin/bgb"
  end

  test do
    assert_match "bloat-be-gone v", shell_output("#{bin}/bloat-be-gone --version")
  end
end
