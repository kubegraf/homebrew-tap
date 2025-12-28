class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.32"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.32/kubegraf-darwin-amd64.tar.gz"
    sha256 "717deb9736208d6eeddbf462b9cd13267de84836746a775df5de21f2edac2709"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.32/kubegraf-darwin-arm64.tar.gz"
    sha256 "2d8c7bbea489fcff8587fb23d90f2b0bf62560c26514e689b59571b91dd7c8cd"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
