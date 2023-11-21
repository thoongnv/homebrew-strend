class Strend < Formula
  desc "Search and visualize Shodan historical data in the terminal"
  homepage "https://github.com/thoongnv/trends-rs"
  url "https://github.com/thoongnv/trends-rs/archive/0.2.2.tar.gz"
  sha256 "4752af9a14ad91b43d1d7dbe7f64b2182b884fcc154b80b85217b0759bbd0e03"
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
