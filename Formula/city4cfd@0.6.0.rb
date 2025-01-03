class City4cfdAT060 < Formula
  desc "Reconstruction of 3D city models tailored to urban CFD simulations"
  homepage "https://github.com/tudelft3d/city4cfd"
  url "https://github.com/tudelft3d/city4cfd/archive/0.6.0.tar.gz"
  sha256 "8200fd04ecceda01ad12d7e628270b4e47e5d2af68dad530c8e4ce4265d787b0"

  depends_on "cmake" => :build
  depends_on "cgal"
  depends_on "eigen"
  depends_on "gdal"
  depends_on "libomp"

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
