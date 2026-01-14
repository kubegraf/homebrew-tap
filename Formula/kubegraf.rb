class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.59"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.59/kubegraf-darwin-amd64.tar.gz"
    sha256 "600760d42fe33299eb419b73cead07ad4a13dcad67894e49c54fdd5cb9e0abe6"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.59/kubegraf-darwin-arm64.tar.gz"
    sha256 "f25f62f18912f81c9e383f96a460c5eb934ad0f504d05da6026200b6493afd44"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
