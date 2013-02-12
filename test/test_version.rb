require 'test_helper'

require 'hostsan/version'

class TestVersion < Test::Unit::TestCase
  def test_version
    assert_equal("0.0.1", Hostsan::VERSION)
  end
end
