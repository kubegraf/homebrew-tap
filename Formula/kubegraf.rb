class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.48"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.48/kubegraf-darwin-amd64.tar.gz"
    sha256 "05202c9843c3a5395e6606afa120088f47870862e3e0dc7c2d146936c75a88d5"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.48/kubegraf-darwin-arm64.tar.gz"
    sha256 "f9fc69df13f0976958feaf5b81efd48b56a5665349c6a126db87cf6a03cec8e3"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
