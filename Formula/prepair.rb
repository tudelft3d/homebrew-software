class Prepair < Formula
  desc "repair invalid polygons according to ISO19107"
  homepage "https://github.com/tudelft3d/prepair"
  url "https://github.com/tudelft3d/prepair/archive/refs/tags/v2.0.2.tar.gz"
  sha256 "84ff4bd29caaae06a1b7bbac3d6cbc0b1eb0b599f7eb2295b5752feefb4a4633"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "cgal"
  depends_on "gdal"

  def install
    system "cmake", ".", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test val3dity`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
