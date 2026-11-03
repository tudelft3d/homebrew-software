class Prepair < Formula
  desc "Repair invalid polygons according to ISO19107"
  homepage "https://github.com/tudelft3d/prepair"
  url "https://github.com/tudelft3d/prepair/archive/refs/tags/v3.0.2.tar.gz"
  sha256 "46d1bc257456be8e14a019fd1292b54f754172e6f9164630202e29d524533eb1"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "cgal"
  depends_on "gdal"

  def install
    system "cmake", "-S", ".", "-B", "build", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_match "MULTIPOLYGON",
                 shell_output("#{bin}/prepair -w 'POLYGON((0 0, 0 10, 10 0, 10 10, 0 0))'")
  end
end
