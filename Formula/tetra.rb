class Tetra < Formula
  desc "App runtime and UX toolkit for pixel-based apps"
  homepage "https://solidpixels.io/products/tetra/"
  version "0.35.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.1/tetra_Darwin_arm64.tar.gz"
      sha256 "6ff64cf0568676f3ab41b319f7fa5a7d109eed8358eaa96dcdd50bfeeee47d95"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.1/tetra_Darwin_x86_64.tar.gz"
      sha256 "2203172372f38e0d42f97980de24c67055b1fefeb64ba97554a3c8659fcc2beb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.1/tetra_Linux_arm64.tar.gz"
      sha256 "7f15f02f28f2af53edb5a64391e7f5b3d9c8d02e8209ac3ae4f54e1e6e215794"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.1/tetra_Linux_x86_64.tar.gz"
      sha256 "f8adb589047fbed852b6fd1be43ffb7e3d610854dd3343b562058243f92475a7"
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
