class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.30"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.30/kubegraf-darwin-amd64.tar.gz"
    sha256 "3f7a1c0ad9b77825a809ff4d26dd5009723b204ec976a344bd0d4b2311b098cf"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.30/kubegraf-darwin-arm64.tar.gz"
    sha256 "d53de2cbbfe09b75c686d2a8b11f0b41c69acdb56f8f36bd146b68b8e634cdee"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
