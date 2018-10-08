#
# Formula for the arpspoof tool
#
class Arpspoof < Formula
  desc "Utility to spoof ARP-TELL frames"
  homepage "https://github.com/csjayp/arpspoof"
  url "https://github.com/csjayp/arpspoof/archive/v1.0.0.tar.gz"
  sha256 "eb15aa4d4967c08427585ec0cc251fdcc44ab4339a764942705b78d15e947a6d"

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "#{bin}/arpspoof"
  end
end
