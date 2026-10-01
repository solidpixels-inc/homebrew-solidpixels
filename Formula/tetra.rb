class Tetra < Formula
  desc "App runtime and UX toolkit for pixel-based apps"
  homepage "https://solidpixels.io/products/tetra/"
  version "0.35.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.2/tetra_Darwin_arm64.tar.gz"
      sha256 "173a18c66a858c08a4fb1aba68ba3ec8397a4896938ebf5fe8b84488da243d0e"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.2/tetra_Darwin_x86_64.tar.gz"
      sha256 "8dfe9f0250036165a3387e13b2486c9c2bd0981a93d755cef574288e7210dea6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.2/tetra_Linux_arm64.tar.gz"
      sha256 "fe94925236ce50e4eaea29efc8e106da662aa97d67b991147a43c225c36ddde5"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.2/tetra_Linux_x86_64.tar.gz"
      sha256 "05e2b7eb3dd9f71c6647e3eed63f4e8c270360a715479b85e0d40c4b1b06c552"
    end
  end

  depends_on "webp"

  def install
    bin.install "tetra"
  end

  test do
    system "#{bin}/tetra", "version"
  end
end
