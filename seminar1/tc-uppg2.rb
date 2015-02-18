#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg2"
require "test/unit"

class TestUppg2 < Test::Unit::TestCase

    def test_faculty
        assert_equal(1, faculty(-1))
        assert_equal(1, faculty(0))

        assert_equal(1, faculty(1))
        assert_equal(2, faculty(2))
        assert_equal(6, faculty(3))

        assert_equal(3628800, faculty(10))
        assert_equal(2432902008176640000, faculty(20))
    end
end
