class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.15"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.15/kubegraf-darwin-amd64.tar.gz"
    sha256 "a30fd80ab9f8c8dce6549248c35e73066fadd41a1910c52d0de177877a862fa6"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.15/kubegraf-darwin-arm64.tar.gz"
    sha256 "e5ababd6649d99f54ab33e2e9676b918378805bf034c33663a8f43c4a7431973"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
