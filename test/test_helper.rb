require "minitest/autorun"
require "zeitwerk"

loader = Zeitwerk::Loader.new
loader.push_dir("lib")
loader.setup

module CustomizedAssertions
  def assert_array_equal(expected, actual)
    assert_equal expected.length, actual.length
    expected.each do |i|
      assert_includes actual, i
    end
  end
end
