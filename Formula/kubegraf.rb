class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.29"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.29/kubegraf-darwin-amd64.tar.gz"
    sha256 "749a00ff583f4de833344f8d49fc98c42e177b3cc3739a964312af1d66da176c"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.29/kubegraf-darwin-arm64.tar.gz"
    sha256 "f40b844960d8171bf05187f36d5b44bf6e55b10a3c773262f2199014b501c6a3"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
