#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./constraint-parser.rb"
require "test/unit"

class TestUppg2 < Test::Unit::TestCase

    def test_c2fParser
        cp=ConstraintParser.new
        c,f=cp.parse "9*c=5*(f-32)"

        f.user_assign 0
        assert_equal(-18, c.value)

        f.user_assign 100
        assert_equal(37, c.value)

        c,k=cp.parse "c=(k-273)"
        k.user_assign 273
        assert_equal(0, c.value)
    end
end

