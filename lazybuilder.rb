require 'formula'

class Lazybuilder < Formula
  homepage 'http://github.com/grahambrooks/lazybuilder'
  url 'https://github.com/grahambrooks/lazybuilder/archive/0.2.tar.gz'
  sha1 'f306040a285d6f277cd2976589ad18e4ca11cdd7'

  head 'https://github.com/grahambrooks/lazybuilder.git'

  depends_on 'boost' => :build

  def install
    system "make install"
  end
  
  def test
    system "#{bin}/lazybuilder", "-V"
  end
end
