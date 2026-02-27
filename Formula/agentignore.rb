class Agentignore < Formula
  desc "Enforce .agentignore fs rules for AI agents with OS sandboxing"
  homepage "https://github.com/douglasmakey/agentignore"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/douglasmakey/agentignore/releases/download/v1.0.0/agentignore-v1.0.0-darwin-arm64.tar.gz"
      sha256 "4d018edb47ca96958de4ccdbabc3b4ffbc052b678b7f0d5babf41cf4adb34aa8"
    end

    if Hardware::CPU.intel?
      url "https://github.com/douglasmakey/agentignore/releases/download/v1.0.0/agentignore-v1.0.0-darwin-x86_64.tar.gz"
      sha256 "f2e9c339785201ddcefc9d3d1ea5062082004161ff2d9f96059d4962f05d6003"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/douglasmakey/agentignore/releases/download/v1.0.0/agentignore-v1.0.0-linux-arm64.tar.gz"
      sha256 "e6aa70c3bc5f861f7b693cc5c828082984cbb25d68f16d32f6b146288cc475ab"
    end

    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/douglasmakey/agentignore/releases/download/v1.0.0/agentignore-v1.0.0-linux-x86_64.tar.gz"
      sha256 "7484cf06ee3ab47093a6f2bb4ac45ffb9d227a52b7fdb792b0555616716903b3"
    end
  end

  def install
    bin.install "agentignore"
  end

  test do
    assert_match "agentignore", shell_output("#{bin}/agentignore --help")
  end
end
