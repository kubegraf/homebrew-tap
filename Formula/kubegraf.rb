class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.17"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.17/kubegraf-darwin-amd64.tar.gz"
    sha256 "ffdeaf33e6d5af0d6f58d50f0927453ac11175014d49052fd68c5a6a52e3910c"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.17/kubegraf-darwin-arm64.tar.gz"
    sha256 "c0a26fbffbc0a2c1dfb14a5acf5bc4b9a4c93a223d0ee1726f53fb686c9a2d97"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
