class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.13"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.13/kubegraf-darwin-amd64.tar.gz"
    sha256 "63382fc9992c3a73c238a3074b5fbd81cc54075dbd2ff3a09a87fa2045ee1b2a"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.13/kubegraf-darwin-arm64.tar.gz"
    sha256 "f5a6408b70a9e69989753af9c5dc59d78b7b57a315e123d684a9037710cb18d1"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
