class Tetra < Formula
  desc "App runtime and UX toolkit for pixel-based apps"
  homepage "https://solidpixels.io/products/tetra/"
  version "0.35.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Darwin_arm64.tar.gz"
      sha256 "b4936d1b8c187195d79f4acd7e4936fdae263c0a57e503a9b14dd9740a70a530"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Darwin_x86_64.tar.gz"
      sha256 "2fdba29813e5149f229073b976d624de0200b0cd6bd712c4f0cd6c56aa8144e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Linux_arm64.tar.gz"
      sha256 "ea04ac8c7325e072b2dcdb306126fc7bf583d28d2edc31fccc0e9811e478cdc1"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Linux_x86_64.tar.gz"
      sha256 "7068fa61746c12d4da8cc27a3692b54fc85e7565b8c7f80eb062c8b340d3a31a"
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
