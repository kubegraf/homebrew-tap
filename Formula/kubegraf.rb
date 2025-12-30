class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.47"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.47/kubegraf-darwin-amd64.tar.gz"
    sha256 "cc12c1e8a772df00064a724517ef28cf07bbbcc542e9a946f82d0229573512cc"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.47/kubegraf-darwin-arm64.tar.gz"
    sha256 "6eb0dd7ff21b374d178edb8c07735a32009e3ba8ac1b7ffca43bbeccde327f45"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
