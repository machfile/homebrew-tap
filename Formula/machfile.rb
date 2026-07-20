class Machfile < Formula
  desc "Modern task runner"
  homepage "https://github.com/machfile/machfile"
  url "https://github.com/machfile/machfile/archive/refs/tags/machfile-cli-v0.2.2.tar.gz"
  sha256 "5e40d3fd6b9083f2b59f31f4043f6562b1f026ff51ae1c771583abe99df97e17"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "true"
  end
end
