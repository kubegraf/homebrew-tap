class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.43"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.43/kubegraf-darwin-amd64.tar.gz"
    sha256 "37e3e4b197137690e57abbfa8d44cb240dc9f24f1c9ec642f9311bbcdea524e6"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.43/kubegraf-darwin-arm64.tar.gz"
    sha256 "7c747b5448a624736d63740e5becac46ce40426af4953d4ce96917d1b78a6ce9"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
