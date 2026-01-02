class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.55"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.55/kubegraf-darwin-amd64.tar.gz"
    sha256 "10f4868b7274f43d01d691ae6846dd252052bc13f8fee4da12d28789636c92b2"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.55/kubegraf-darwin-arm64.tar.gz"
    sha256 "a27a66c5c8ad7edaaef0e0796491ee1d5bd9edbff832440b624a9e35683cb9e2"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
