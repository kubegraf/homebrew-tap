class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.37"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.37/kubegraf-darwin-amd64.tar.gz"
    sha256 "077c51ce1dca570f0d6388499aecba4dfcb8d19906bf0d4dee04c725ea1ee6cb"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.37/kubegraf-darwin-arm64.tar.gz"
    sha256 "9b82c9995e63874e48e216dc4caba105ebbcc4a2c164f8cc47a1c2460396460a"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
