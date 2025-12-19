class Gothanks < Formula
  desc "Automatically star your go.mod Github dependencies"
  homepage "https://github.com/psampaz/gothanks"
  url "https://github.com/psampaz/gothanks/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "932915b470a3c55edf6b6524d0062a762ae79c2c9b39685aa1a53aae53449265"
  license "MIT"

  bottle do
    root_url "https://github.com/anthumchris/homebrew-tt/releases/download/gothanks-0.5.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "026947bb34bf577aeef32cac9e3288bf0554a1c022be1bcc1228a53f3209bb3e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d4a29cfbfbf3ec448d09be6454874af7bdaf248862a77f3a1a7c922acc6b03d6"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "1", "1"
  end
end
