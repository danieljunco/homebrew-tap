class Vesper < Formula
  desc "Peer-to-peer chess for the terminal"
  homepage "https://github.com/danieljunco/chess-tui"
  url "https://github.com/danieljunco/chess-tui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f4a5d0f743ca20daa96364442b4828059f440cdec659306f934b0e985bc0894d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/vesper --version")
  end
end
