See https://discourse.brew.sh/t/c-homebrew-compiler-suppress-pragma-messages/1893

Building without Homebrew
-------------------------

Result ``Pragma message: hello``:

.. code-block:: none

  > cmake -H. -B_builds
  -- The C compiler identification is AppleClang 9.0.0.9000039
  -- The CXX compiler identification is AppleClang 9.0.0.9000039
  -- Check for working C compiler: /.../Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc
  -- Check for working C compiler: /.../Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc -- works
  -- Detecting C compiler ABI info
  -- Detecting C compiler ABI info - done
  -- Detecting C compile features
  -- Detecting C compile features - done
  -- Check for working CXX compiler: /.../Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
  -- Check for working CXX compiler: /.../Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ -- works
  -- Detecting CXX compiler ABI info
  -- Detecting CXX compiler ABI info - done
  -- Detecting CXX compile features
  -- Detecting CXX compile features - done
  Pragma message: hello
  -- Configuring done
  -- Generating done
  -- Build files have been written to: /.../brew-pragma/_builds

Building with Homebrew
----------------------

Result ``No pragma messages found``:

.. code-block:: none

  > brew install --verbose ./brew-pragma.rb
  /usr/bin/sandbox-exec -f ...
  ==> Cloning https://github.com/forexample/brew-pragma.git
  Updating ...
  git config remote.origin.url https://github.com/forexample/brew-pragma.git
  git config remote.origin.fetch +refs/heads/master:refs/remotes/origin/master
  git fetch origin
  ==> Checking out branch master
  git checkout -f master --
  Already on 'master'
  Your branch is up-to-date with 'origin/master'.
  git reset --hard origin/master
  HEAD is now at 3984445 Check if something found
  ==> cmake -DCMAKE_C_FLAGS_RELEASE=-DNDEBUG -DCMAKE_CXX_FLAGS_RELEASE=-DNDEBUG -DCMAKE_INSTALL_PREFIX=/usr/local/Cellar/brew-pragma/0.0.1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_FIND_FRAMEWORK=LAST -DCMAKE_VERBOSE_MAKEFILE=ON -Wno-dev
  -- The C compiler identification is AppleClang 9.0.0.9000039
  -- The CXX compiler identification is AppleClang 9.0.0.9000039
  -- Check for working C compiler: /usr/local/Homebrew/Library/Homebrew/shims/super/clang
  -- Check for working C compiler: /usr/local/Homebrew/Library/Homebrew/shims/super/clang -- works
  -- Detecting C compiler ABI info
  -- Detecting C compiler ABI info - done
  -- Detecting C compile features
  -- Detecting C compile features - done
  -- Check for working CXX compiler: /usr/local/Homebrew/Library/Homebrew/shims/super/clang++
  -- Check for working CXX compiler: /usr/local/Homebrew/Library/Homebrew/shims/super/clang++ -- works
  -- Detecting CXX compiler ABI info
  -- Detecting CXX compiler ABI info - done
  -- Detecting CXX compile features
  -- Detecting CXX compile features - done
  No pragma messages found
  -- Configuring done
  -- Generating done
  -- Build files have been written to: /tmp/...
