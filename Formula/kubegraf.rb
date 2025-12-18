class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.20"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.20/kubegraf-darwin-amd64.tar.gz"
    sha256 "d33c7c2122930df8276251c6db90e87508bb5f6746488185873d693fc5b8eaf3"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.20/kubegraf-darwin-arm64.tar.gz"
    sha256 "5968acbafc47a919ddff18a42d9018f38f41f25a610a85660e816a33994a236c"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
