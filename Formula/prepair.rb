class Prepair < Formula
  desc "Repair invalid polygons according to ISO19107"
  homepage "https://github.com/tudelft3d/prepair"
  url "https://github.com/tudelft3d/prepair/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "1820ff1a6ff717648bb959b13d190bc0dbe52d3f2efe5301e187bf0f95fb9030"
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
