class Kubegraf < Formula
  desc "Intelligent Kubernetes Control Center"
  homepage "https://kubegraf.io"
  version "1.7.58"

  if Hardware::CPU.intel?
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.58/kubegraf-darwin-amd64.tar.gz"
    sha256 "7062a3867a2f3dba3496dc714d94e9279e034865160a9ddb91d5ed368ced0f5c"
  else
    url "https://github.com/kubegraf/kubegraf/releases/download/v1.7.58/kubegraf-darwin-arm64.tar.gz"
    sha256 "d0326ba9893f32ba3e6d4ffb3f69ecb1c3bd5256bd6426d51c872770572818df"
  end

  def install
    bin.install "kubegraf"
  end

  test do
    system "#{bin}/kubegraf", "--version"
  end
end
