class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.36"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.36/kubegraf-darwin-amd64.tar.gz"
    sha256 "ac7e61da5572085b0cfa4a1edbdfa79c4f5d27a5e042fbd5c5359643e0576c94"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.36/kubegraf-darwin-arm64.tar.gz"
    sha256 "3ae246cd7037fc6d3b297c554117ad445f8c72d45efd8c92ac62c7723055404f"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
