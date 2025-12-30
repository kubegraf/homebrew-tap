class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.42"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.42/kubegraf-darwin-amd64.tar.gz"
    sha256 "5d8ba06c5834ae4554aab636e50930b2951dbccf21da3e45a101c0133e326820"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.42/kubegraf-darwin-arm64.tar.gz"
    sha256 "75130247507ab708e15d1dada60f5c9066fc1f4305eafdced1b9b66b691ab3ae"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
