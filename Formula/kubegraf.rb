class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.24"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.24/kubegraf-darwin-amd64.tar.gz"
    sha256 "071de5b942a2c62556e1093814d2961d0ce927bd40009c020324a09070d269f7"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.24/kubegraf-darwin-arm64.tar.gz"
    sha256 "493aba2a3f8da81e011cfc141b67976a00bc38c81158c8c56f743a776f258fa0"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
