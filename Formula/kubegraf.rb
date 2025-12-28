class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.31"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.31/kubegraf-darwin-amd64.tar.gz"
    sha256 "979e3d0efd9ba51a8cd6bdb5dc951a376b5ace734424b3df4fe97256340ea2ab"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.31/kubegraf-darwin-arm64.tar.gz"
    sha256 "499d7cd45d36ec45ea83727b060630bb94ee400d6c8d7bf99fa7c490ed440863"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
