class Greet < Formula
  desc "say hello"
  homepage "https://github.com/ttskch/greet"
  url "https://github.com/ttskch/greet/archive/1.0.0.tar.gz"
  sha256 "515157fd5036dda9a32fa64870c87b03609a7d8c70bdc9037f00e77327ae8cac"

  depends_on "composer" => :build

  def install
    system "composer", "install"
    bin.install ["greet", "vendor"]
  end
end
