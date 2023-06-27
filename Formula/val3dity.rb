class Val3dity < Formula
  desc "Validation of 3D geometric primitives according to ISO19107"
  homepage "https://github.com/tudelft3d/val3dity"
  url "https://github.com/tudelft3d/val3dity/archive/2.4.0.tar.gz"
  sha256 "b69e8503258d4d8542a74f969ce75e861f4e3d4126f9ea0a324fca221642f936"

  depends_on "cmake" => :build
  depends_on "cgal"
  depends_on "geos"

  def install
    system "cmake", ".", *std_cmake_args
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
