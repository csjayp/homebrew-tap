#
# Formula for the ministat tool
#
class Ministat < Formula
  desc "A small statistics tool originally written for FreeBSD"
  homepage "https://github.com/csjayp/ministat"
  url "https://github.com/csjayp/ministat/archive/v1.1.tar.gz"
  sha256 "3340ac60351ee136202c70dad57f64a4e6465a3480772ee33d6c18ec45ce7cd5"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
