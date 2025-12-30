class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.44"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.44/kubegraf-darwin-amd64.tar.gz"
    sha256 "76194c63265a96dfc66b9fd1f78ea03f371ab83f07102b7e31a16b3fbc08bf6c"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.44/kubegraf-darwin-arm64.tar.gz"
    sha256 "c8d728c7245a0d732713fcc8d8c024c56643e0e4a1f552320bd3af31f61acd6a"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
