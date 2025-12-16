class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.18"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.18/kubegraf-darwin-amd64.tar.gz"
    sha256 "2d7c828275671fb6a7812a75b20650723ee3cde2d0321f37632b39f8d5f4f298"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.18/kubegraf-darwin-arm64.tar.gz"
    sha256 "15a94654286c1942a2dabab5acf7e1556c5fb8e2d28e3659388f9f14fd54f87e"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
