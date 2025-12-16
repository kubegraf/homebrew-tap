class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version ""

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v/kubegraf-darwin-amd64.tar.gz"
    sha256 "Not"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v/kubegraf-darwin-arm64.tar.gz"
    sha256 "Not"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
