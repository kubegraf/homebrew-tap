class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.16"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.16/kubegraf-darwin-amd64.tar.gz"
    sha256 "25820b9326c9c5a5a9520a945c237b0c398cccf1dd73c932157c463e9645695d"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.16/kubegraf-darwin-arm64.tar.gz"
    sha256 "7159bf32526dcedaa3ebb98db1cf0e9125d45f69c4c09307c3ba14e2248240d9"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
