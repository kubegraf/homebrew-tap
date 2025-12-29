class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.35"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.35/kubegraf-darwin-amd64.tar.gz"
    sha256 "36141cc7c515d568f3089b50393447ed822904207ec8710a5491938a879a0293"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.35/kubegraf-darwin-arm64.tar.gz"
    sha256 "b051de329660b9da84f56d48db0bdf75eda8a339ec0b74a3fa1a403e07a8925a"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
