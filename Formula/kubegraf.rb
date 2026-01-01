class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.54"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.54/kubegraf-darwin-amd64.tar.gz"
    sha256 "cddcb0ed34c0e1e46534b6010d59ace4935333d21f6b5070fdb3f89f683c669c"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.54/kubegraf-darwin-arm64.tar.gz"
    sha256 "0cddbe8519bdd340b0009590313bc5f431ad3e5817a89b8890548485f439e8c0"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
