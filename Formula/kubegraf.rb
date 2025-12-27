class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.26"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.26/kubegraf-darwin-amd64.tar.gz"
    sha256 "bd6d7856d006c63ac6d2f4636e2b0142975f5c7335070d64bc45d6427497fa01"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.26/kubegraf-darwin-arm64.tar.gz"
    sha256 "812e959ea7a70076e178af4833b44602d8ef6704e789899a5b50edff29fdfb53"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
