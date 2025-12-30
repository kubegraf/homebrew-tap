class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.50"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.50/kubegraf-darwin-amd64.tar.gz"
    sha256 "a4fc2cc2b4585a5396fb130b239d38768428d648bd0b034b2aa3c0484889a4b5"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.50/kubegraf-darwin-arm64.tar.gz"
    sha256 "69e3ebf9a65234402c61b71b13c280e7dbe5b48c712b368957333d6ca5297302"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
