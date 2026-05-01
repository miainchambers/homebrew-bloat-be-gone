class BloatBeGone < Formula
  desc "Fast, interactive CLI tool for cleaning Node.js workspace bloat"
  homepage "https://github.com/miainchambers/bloat-be-gone"
  url "https://github.com/miainchambers/bloat-be-gone/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "392c8cb2f22ed3b2098fbe96109941d447e1c1d4b2b7291fc2961c3accf51055"
  license "MIT"

  def install
    bin.install "bloat-be-gone.sh" => "bloat-be-gone"
    bin.install "bin/bgb"
  end

  test do
    assert_match "bloat-be-gone v", shell_output("#{bin}/bloat-be-gone --version")
  end
end
