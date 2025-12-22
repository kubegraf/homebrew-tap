class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.23"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.23/kubegraf-darwin-amd64.tar.gz"
    sha256 "b89bfcbb00f5742ac581cb04772322d557eeacd9932322826b38b57c63e1357f"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.23/kubegraf-darwin-arm64.tar.gz"
    sha256 "91192b81e49103b208a99ce945a7cff17b0748af0187b0ddfae4943fd9697608"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
