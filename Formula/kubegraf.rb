class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.56"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.56/kubegraf-darwin-amd64.tar.gz"
    sha256 "854b7dca80d466d6c8d1453c233ad6c7f73c7ba3f02f1dadd4e719ffd8b3476d"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.56/kubegraf-darwin-arm64.tar.gz"
    sha256 "ef7deffe66fe2d98968ed02558a41db8268ada47f13b06f8dac9c562bdc5cdfc"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
