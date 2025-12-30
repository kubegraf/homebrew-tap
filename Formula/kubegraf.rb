class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.39"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.39/kubegraf-darwin-amd64.tar.gz"
    sha256 "cdf4b0d2c4b64eed517028deaf14da94135a6f5d648afae6fd64b30ae27f5aca"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.39/kubegraf-darwin-arm64.tar.gz"
    sha256 "5ea3e69dc813600ad9f53c6c979b498dee55a375898b21a4ca6e34b44a1bd95c"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
