class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.14"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.14/kubegraf-darwin-amd64.tar.gz"
    sha256 "e4ae8fae034eef66c4fc189a81822e0396796a839803f0594b444d1c2bd7127d"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.14/kubegraf-darwin-arm64.tar.gz"
    sha256 "5bf9bdc29bb3fb4e550cc0caa9c8a99c5a84b2347cdfe050801a50d485bd30f7"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
