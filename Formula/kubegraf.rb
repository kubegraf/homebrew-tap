class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.30"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.30/kubegraf-darwin-amd64.tar.gz"
    sha256 "cc353fd841f5da046e4a5bd31ee4e65bbe17e0333af045575aa40925b385abd4"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.30/kubegraf-darwin-arm64.tar.gz"
    sha256 "aefd89f8db872b0ec5100f4d4d23d0fdf7357590a90916f235cf3cb014d49e82"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
