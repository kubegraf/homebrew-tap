class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.49"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.49/kubegraf-darwin-amd64.tar.gz"
    sha256 "deec6e7ce52bc9ad663dada928314c19d9bb7e80bca3a09a86dd6f6d142e47a6"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.49/kubegraf-darwin-arm64.tar.gz"
    sha256 "ec60223d5b9898163b5f416f23c8b86883d2d0f0977bc4b28b3a9110ac0d9e35"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
