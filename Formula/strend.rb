class Strend < Formula
  desc "Search and visualize Shodan historical data in the terminal"
  homepage "https://github.com/thoongnv/trends-rs"
  url "https://github.com/thoongnv/trends-rs/archive/0.2.2.tar.gz"
  sha256 "45f08021f690c1dd45c2f3d427b2de4014cb59220f6af8f525859717136fd38d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/strend --version")
    assert_match "Error: Invalid arguments, please check: strend --help",
      shell_output("#{bin}/strend --query '' --facets os", 1)
  end
end
