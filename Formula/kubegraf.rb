class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.29"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.29/kubegraf-darwin-amd64.tar.gz"
    sha256 "8ccf9b24b1a204d2991e66d3a8d3b081cf1d951628406be5435d99adfa2e686f"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.29/kubegraf-darwin-arm64.tar.gz"
    sha256 "1740387015c9349acbc12da598bb350c5786fc407e3b7d2e0054e3be0a6f5d94"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
