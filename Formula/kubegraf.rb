class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.51"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.51/kubegraf-darwin-amd64.tar.gz"
    sha256 "306fe8729c62b15e79058e5b5f3c7eca57be90351db729eab2187ee070835e1a"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.51/kubegraf-darwin-arm64.tar.gz"
    sha256 "1d43118de862bfdf8d65e8b311f85fb67a906e64755784e551d8b39c994cc941"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
