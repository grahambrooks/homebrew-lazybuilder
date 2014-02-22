require 'formula'

class Tmate < Formula
  homepage 'http://github.com/grahambrooks/build-daemon'
  url 'https://github.com/grahambrooks/build-daemon/archive/0.1.tar.gz'
  sha1 '9ec0eb583a6c570c4c848776c2483d56610f4c1e'

  head 'https://github.com/grahambrooks/build-daemon.git'

  depends_on 'boost' => :build

  def install
    system "make install"
  end
  
  def test
    system "#{bin}/build-daemon", "-V"
  end
end
