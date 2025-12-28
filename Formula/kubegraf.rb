class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.33"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.33/kubegraf-darwin-amd64.tar.gz"
    sha256 "fc350bfc2e8b2618a024634a582566850b4913396e05697948f6e8b1910b81c3"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.33/kubegraf-darwin-arm64.tar.gz"
    sha256 "027f3e8cc41830f3307ba805eedd271f5f5c2e0fe2b2927e845f5aa55690af7e"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
