class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.58"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.58/kubegraf-darwin-amd64.tar.gz"
    sha256 "89f90eb7ee055897232650a821c8b48e7a79372781f6a4bd921254fd967fa2f5"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.58/kubegraf-darwin-arm64.tar.gz"
    sha256 "f8f0ea3f1fba0927f07c722fdc7eb2f00a0d821d971f39c29977523bd8bf73c5"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
