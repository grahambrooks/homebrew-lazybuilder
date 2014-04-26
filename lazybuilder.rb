require 'formula'

class Lazybuilder < Formula
  homepage 'http://github.com/grahambrooks/lazybuilder'
  url 'https://github.com/grahambrooks/lazybuilder/archive/0.6.tar.gz'
  sha1 '0e3257a699742a78fbc9b4c02e80a8827c3c82f7'

  head 'https://github.com/grahambrooks/lazybuilder.git'

  depends_on 'boost' => :build

  def install
    system "make install"
  end
  
  def test
    system "#{bin}/lazybuilder", "-V"
  end
end
