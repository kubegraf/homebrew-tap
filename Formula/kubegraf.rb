class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.32"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.32/kubegraf-darwin-amd64.tar.gz"
    sha256 "a48d713a55917b641cfbb6dfff6a3def551dd6529d1f3865f4fd5a28136166cc"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.32/kubegraf-darwin-arm64.tar.gz"
    sha256 "6a373456f3af8b3f38f1e65722c8e90c57f2cf48122b14eceb4d53609a3ce705"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
