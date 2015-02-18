#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg9"
require "test/unit"

class TestUppg9 < Test::Unit::TestCase

    def test_rotate_left
        assert_equal([2, 3, 1], [1,2,3].rotate_left)
        assert_equal([1, 2, 3], [1,2,3].rotate_left(3))

        assert_equal([1, 2, 3], [1,2,3].rotate_left(0))

        assert_equal([3, 1, 2], [1,2,3].rotate_left(-1))
        assert_equal([1, 2, 3], [1,2,3].rotate_left(-3))
    end
end
