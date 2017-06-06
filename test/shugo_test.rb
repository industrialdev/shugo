require 'test_helper'

class ShugoTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Shugo::VERSION
  end
end
