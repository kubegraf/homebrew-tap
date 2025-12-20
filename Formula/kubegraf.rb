class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.21"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.21/kubegraf-darwin-amd64.tar.gz"
    sha256 "859c88c0085d7c2e13fbcff744d4e9bd165e3d54c0760afe9eddf9d157c7cf61"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.21/kubegraf-darwin-arm64.tar.gz"
    sha256 "fac0e5c94d016d5e2a6eafc709cc7257229b65a939b9042958724d9ef44ca3ba"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
