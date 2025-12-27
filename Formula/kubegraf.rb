class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.25"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.25/kubegraf-darwin-amd64.tar.gz"
    sha256 "23c6042ff71063cddac961d1964cdbad1b47bf4228f655d941f423627c453836"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.25/kubegraf-darwin-arm64.tar.gz"
    sha256 "461b897af5f98f18726582c49221f542c6f3d564a9655b484b579222a26e1732"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
