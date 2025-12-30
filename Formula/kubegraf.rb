class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.40"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.40/kubegraf-darwin-amd64.tar.gz"
    sha256 "cc5dae54214f2a2272d244ad66371eb653be25bfadc094d18afcf5065b52db3b"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.40/kubegraf-darwin-arm64.tar.gz"
    sha256 "12584f63493152f6b3e6dbf47107fb0691e03fe7e3255d7166463bd89159e89b"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
