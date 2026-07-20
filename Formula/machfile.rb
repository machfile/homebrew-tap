class Machfile < Formula
  desc "Modern task runner"
  homepage "https://github.com/machfile/machfile"
  url "https://github.com/machfile/machfile/archive/refs/tags/machfile-cli-v0.2.2.tar.gz"
  sha256 "5e40d3fd6b9083f2b59f31f4043f6562b1f026ff51ae1c771583abe99df97e17"
  license "MIT"

  bottle do
    root_url "https://github.com/machfile/homebrew-tap/releases/download/machfile-0.2.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "8b2a61f86e8e932759abcba50b020b9153a59a76c384138ae5621d0010fdc6ad"
    sha256 cellar: :any,                 x86_64_linux: "6ed13d9e5ccd9df52e63e66bca59e9196fda9e8d50fd4481af9e9d64b604222f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "machfile-cli")
  end

  test do
    system "true"
  end
end
