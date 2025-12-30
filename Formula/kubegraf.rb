class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.46"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.46/kubegraf-darwin-amd64.tar.gz"
    sha256 "4781bbdc225b0b18fadb877a4375190b54fe4d4e2d9951960f8de6bb6f680898"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.46/kubegraf-darwin-arm64.tar.gz"
    sha256 "4bc370666a39ed93475b87e8773335cefa12bc3ac028545874f0d7dae414bf99"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
