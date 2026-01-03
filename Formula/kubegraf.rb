class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.56"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.56/kubegraf-darwin-amd64.tar.gz"
    sha256 "e56ac229037490fb7162fd8842f2178be1e16a3d12dbf25140ed170fe8377bf6"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.56/kubegraf-darwin-arm64.tar.gz"
    sha256 "02864c9e380202a574deafaedd6f9266c93bab42696fd766a6c5edb8547523ad"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
