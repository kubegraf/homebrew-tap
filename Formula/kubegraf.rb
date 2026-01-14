class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.57"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.57/kubegraf-darwin-amd64.tar.gz"
    sha256 "dec45d25af5b6acdd7e64b86b862b2725507e076d4f068c1d86315d7eb0c5629"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.57/kubegraf-darwin-arm64.tar.gz"
    sha256 "b5bf645607693aee6c0f2513411793fdecc4308658b7a3ad1fb1947c6d6c9a47"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
