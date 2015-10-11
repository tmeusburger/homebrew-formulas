# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames

class RacerRust < Formula
  desc "Rust Racer"
  homepage "https://github.com/phildawes/racer/"
  url "https://github.com/phildawes/racer/archive/master.zip"
  sha256 "df181784f27bec0c9accfaf5742b3c167ee700cc31814b1fa6e1316640e20e13"
  version "1.0"

  depends_on "rust"

  def install
    system "cargo build --release"
    bin.install Dir["target/release/racer"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test rust-racer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

