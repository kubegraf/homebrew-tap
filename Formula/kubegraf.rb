class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.27"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.27/kubegraf-darwin-amd64.tar.gz"
    sha256 "d1dca1b01364830e39c5f03a90145e622bc7a6bb38944e3cb399cfb603d90a49"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.27/kubegraf-darwin-arm64.tar.gz"
    sha256 "4627cfc10a7d33912efa5a45516aa87face1719cbbee63044e89b559f3e47ef2"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
