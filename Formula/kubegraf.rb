class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.57"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.57/kubegraf-darwin-amd64.tar.gz"
    sha256 "625471125b0c9197de88570276e4f9ffec5e5a384173315d5ddeda18d0badb33"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.57/kubegraf-darwin-arm64.tar.gz"
    sha256 "9643742630ad83fb055a0de5020b3d4c172cadead5d96d6f895766361b943e21"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
