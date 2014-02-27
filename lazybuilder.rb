require 'formula'

class Lazybuilder < Formula
  homepage 'http://github.com/grahambrooks/lazybuilder'
  url 'https://github.com/grahambrooks/lazybuilder/archive/0.5.tar.gz'
  sha1 'af4c29f6e3334421c8136d7e9b041c751431a7b2'

  head 'https://github.com/grahambrooks/lazybuilder.git'

  depends_on 'boost' => :build

  def install
    system "make install"
  end
  
  def test
    system "#{bin}/lazybuilder", "-V"
  end
end
