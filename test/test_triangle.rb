# -*- coding: utf-8 -*-

require 'test_helper'

require 'hostsan/triangle'

class TestTriangle < Test::Unit::TestCase
  def test_triangle
    assert_raise(ArgumentError) { Hostsan::Triangle.determine(nil, 0, 1) }
    assert_raise(ArgumentError) { Hostsan::Triangle.determine(-1, 0, 0) }

    assert_equal("正三角形です", Hostsan::Triangle.determine(1, 1, 1))
    assert_equal("正三角形です", Hostsan::Triangle.determine(1.5, 1.5, 1.5))

    assert_equal("二等辺三角形です", Hostsan::Triangle.determine(1, 2, 2))
    assert_equal("二等辺三角形です", Hostsan::Triangle.determine(2, 1, 2))
    assert_equal("二等辺三角形です", Hostsan::Triangle.determine(2, 2, 1))
    assert_equal("二等辺三角形です", Hostsan::Triangle.determine(1.0, 2.0, 2.0))
    assert_equal("二等辺三角形です", Hostsan::Triangle.determine(2.0, 1.0, 2.0))
    assert_equal("二等辺三角形です", Hostsan::Triangle.determine(2.0, 2.0, 1.0))

    assert_equal("三角形です", Hostsan::Triangle.determine(5, 4, 3))
    assert_equal("三角形です", Hostsan::Triangle.determine(2.5, 2, 1))
  end
end
