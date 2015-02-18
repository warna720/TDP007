#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg1"
require "test/unit"

class TestUppg1 < Test::Unit::TestCase

    def test_n_times
        j = 2
        n_times(3) { j *= j }
        assert_equal(j, 256)

        k = -1
        n_times(5) { k *= k }
        assert_equal(k, 1)
        assert_not_equal(k, -1)

    end

    def test_Repeat_Class

        j = Repeat.new(3)
        k = 2
        j.each { k *= k}
        assert_equal(k, 256)

        l = Repeat.new(5)
        m = -1
        j.each { m *= m}
        assert_equal(m, 1)
        assert_not_equal(m, -1)
    end
end
