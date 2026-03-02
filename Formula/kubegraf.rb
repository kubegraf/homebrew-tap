class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.60"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.60/kubegraf-darwin-amd64.tar.gz"
    sha256 ""
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.60/kubegraf-darwin-arm64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
