class Shelldon < Formula
  desc "Shelldon is your new Rust-powered buddy with GPT features!"
  homepage "https://github.com/douglasmakey/shelldon"
  url "https://github.com/douglasmakey/shelldon/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "5fd2b7609fb095db4e885434b379de464c760f0e2907d60e342e0ccbd771ad7c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/shelldon"
  end

  test do
    assert_match "Shelldon", shell_output("#{bin}/shelldon --version")
  end
end