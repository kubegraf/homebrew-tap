class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.19"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.19/kubegraf-darwin-amd64.tar.gz"
    sha256 "e4174a2f15b79169ec35ac4d00db806fb70c6a06bc3e8b8f4d3254477b4279bf"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.19/kubegraf-darwin-arm64.tar.gz"
    sha256 "6ea624413bd8f5f833e66cc14840e5361d74a8872693be80e6542e061bbf8e11"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
