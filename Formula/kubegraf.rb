class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.38"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.38/kubegraf-darwin-amd64.tar.gz"
    sha256 "dc7e51bd87519e6046782daec495b56c5794adc90a6df428affb6d0acd152c5f"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.38/kubegraf-darwin-arm64.tar.gz"
    sha256 "decb0fdfbd8c05dbf04a57aca850de18cfe84b1b32b5e0729f8e5d19466001f3"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
