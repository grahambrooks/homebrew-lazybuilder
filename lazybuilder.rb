require 'formula'

class Lazybuilder < Formula
  homepage 'http://github.com/grahambrooks/lazybuilder'
  url 'https://github.com/grahambrooks/lazybuilder/archive/0.5.tar.gz'
  sha1 'cae27ddcd7f03c916689e0753702a4084e817fdf'

  head 'https://github.com/grahambrooks/lazybuilder.git'

  depends_on 'boost' => :build

  def install
    system "make install"
  end
  
  def test
    system "#{bin}/lazybuilder", "-V"
  end
end
