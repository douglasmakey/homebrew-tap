class Shelldon < Formula
  desc "Shelldon is your new Rust-powered buddy with GPT features!"
  homepage "https://github.com/douglasmakey/shelldon"
  url "https://github.com/douglasmakey/shelldon/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "00b4dd2db5ea4543ca52a5ac1d9b06aa33ca06cc93208c7a626e78c4eb30d5d6"
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