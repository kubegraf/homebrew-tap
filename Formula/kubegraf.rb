class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.52"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.52/kubegraf-darwin-amd64.tar.gz"
    sha256 "ee5b66c87e57ce91f1be16be2d704fdf2377beeb61444506b7d6945247f91697"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.52/kubegraf-darwin-arm64.tar.gz"
    sha256 "d5fb792dc80967c73ee51458bd4c5ede44ff4b6a86d43d5fe8a6cdead49e758d"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
