class Tetra < Formula
  desc "App runtime and UX toolkit for pixel-based apps"
  homepage "https://solidpixels.io/products/tetra/"
  version "0.35.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Darwin_arm64.tar.gz"
      sha256 "8594fde7ae366e10000fcf915bffaa36ca7e3af627d6a37211b498d2b9c454e7"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Darwin_x86_64.tar.gz"
      sha256 "ac1b5c82ee79c8e62278044ec954c114c2b66b953d5c7afd9746d1d920f68ebb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Linux_arm64.tar.gz"
      sha256 "c6af403dccb702d2f2fa9a159a15812b625dc0e33901eb6becaee9fe9edddb5d"
    else
      url "https://github.com/solidpixels-inc/tetra-releases/releases/download/v0.35.0/tetra_Linux_x86_64.tar.gz"
      sha256 "057a4aecbe4bc06994fe9cf953ef0a0f96cb752382c4d00125985afea51b20a9"
    end
  end

  depends_on "webp"

  def install
    bin.install "tetra"
  end

  test do
    system "#{bin}/tetra", "--version"
  end
end
