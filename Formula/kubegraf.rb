class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.58"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.58/kubegraf-darwin-amd64.tar.gz"
    sha256 "efceb8e8656b7557a31f106501fd4c4cdfd2ccab2e9807fb3ee25dcc34078c64"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.58/kubegraf-darwin-arm64.tar.gz"
    sha256 "62703ecb302cc1a02fe24da535a44d972cf7d9117f1ccb436339bf06284d55d1"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
