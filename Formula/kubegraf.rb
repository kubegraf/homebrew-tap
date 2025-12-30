class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.53"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.53/kubegraf-darwin-amd64.tar.gz"
    sha256 "0b7f94dfa345429a7124447c1f93f18c9e6b7f66c75e9bc808c8056544ced359"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.53/kubegraf-darwin-arm64.tar.gz"
    sha256 "5be3888682aaea6e1f23dfb3cc82c98464e527654687d7de64720d3c50c42191"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
