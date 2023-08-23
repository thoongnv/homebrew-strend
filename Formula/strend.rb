class Strend < Formula
    desc "Search and visualize Shodan historical data in the terminal"
    homepage "https://github.com/thoongnv/trends-rs"
    url "https://github.com/thoongnv/trends-rs/archive/0.2.1.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    license "MIT"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/strend --version")
    end
  end