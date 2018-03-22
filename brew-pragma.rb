require 'formula'

class BrewPragma < Formula
  version '0.0.1'

  homepage 'https://github.com/forexample/brew-pragma'
  url 'https://github.com/forexample/brew-pragma.git', :branch => 'master'

  devel do
    version '0.0.1'
    url 'https://github.com/forexample/brew-pragma.git', :branch => 'master'
  end

  depends_on 'cmake' => :build

  def install
    args = *std_cmake_args

    system "cmake", *args
    system "make"

  end
end
