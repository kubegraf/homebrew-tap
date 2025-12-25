class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.22"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.22/kubegraf-darwin-amd64.tar.gz"
    sha256 "13989e4857a19c1a256c6dba74679af67e9becc64b59c9bdb06e0bd175afea17"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.22/kubegraf-darwin-arm64.tar.gz"
    sha256 "d7a281770171dcce535d8d264a2176587db9336e03900e3532146d92ff8a3cfe"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
