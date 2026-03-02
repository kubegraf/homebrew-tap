class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.60"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.60/kubegraf-darwin-amd64.tar.gz"
    sha256 "27fd24e0aeab7d13b894308f4edba07c1b8c9783f124f6cd1e21d6f88e41e994"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.60/kubegraf-darwin-arm64.tar.gz"
    sha256 "16b7e169e7a5c13f5c7722f394e54659a4922f358d3df51471bc7d0af2de151d"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
