class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.22"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.22/kubegraf-darwin-amd64.tar.gz"
    sha256 "efe021271082477b13b3c4157d12610b69bd120c21934696fef48af80768e0ed"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.22/kubegraf-darwin-arm64.tar.gz"
    sha256 "4d3a37774c4c73565fcd0981393a2ba146e38ce364bc63ecdb7f37ce5932b536"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
