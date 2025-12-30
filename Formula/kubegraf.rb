class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.41"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.41/kubegraf-darwin-amd64.tar.gz"
    sha256 "3ac35aa086172c51ca3b5607703bb79b187d89500fdfd6f0638cd72d65332371"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.41/kubegraf-darwin-arm64.tar.gz"
    sha256 "d7f655691667ec4a17af087cdf695d1be6e0422340c21acab513680ced3f15f7"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
