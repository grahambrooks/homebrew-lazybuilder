require 'formula'

class Lazybuilder < Formula
  homepage 'http://github.com/grahambrooks/lazybuilder'
  url 'https://github.com/grahambrooks/lazybuilder/archive/0.7.tar.gz'
  sha1 'b92eb404860c07dd71e0dc2113c1aed56d2cd729'

  head 'https://github.com/grahambrooks/lazybuilder.git'

  depends_on 'boost' => :build

  def install
    system "make install"
  end
  
  def test
    system "#{bin}/lazybuilder", "-V"
  end
end
