class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.20"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.20/kubegraf-darwin-amd64.tar.gz"
    sha256 "d48aa50e63982d64b86e00b064a166c815c7d54d56346f0f6dd1cc62542df248"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.20/kubegraf-darwin-arm64.tar.gz"
    sha256 "72c1b193e2a8ce127714b6a551ad49ea3292b7622321132ebc71792ccf151527"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
