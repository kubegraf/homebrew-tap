class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.31"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.31/kubegraf-darwin-amd64.tar.gz"
    sha256 "da9736b23d89e84e317e1b7f345c82f0806f1fd0f8edceceb1f2b56a96fef06d"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.31/kubegraf-darwin-arm64.tar.gz"
    sha256 "77e98d6a3b2161e0774b91fb4fe5a5bf2b8bcf3ccb1c3b769cc37df74163a08f"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
