class Prepair < Formula
  desc "repair invalid polygons according to ISO19107"
  homepage "https://github.com/tudelft3d/prepair"
  url "https://github.com/tudelft3d/prepair/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "469405f2fdaf3058253a35dd67cd3ae4c122e4c3323036c90d1f6d952bcb636c"

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
