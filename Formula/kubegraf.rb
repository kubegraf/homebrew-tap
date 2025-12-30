class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.45"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.45/kubegraf-darwin-amd64.tar.gz"
    sha256 "3bed91a25e724987461e4bfdad55c4e2534373ace232d3abb0199049dd5623a9"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.45/kubegraf-darwin-arm64.tar.gz"
    sha256 "65a7f566633d1ebd71d26c0905dc941b86f6a4907893d751bdeca32680770460"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
