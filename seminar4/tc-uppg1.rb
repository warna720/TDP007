#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./constraint_networks.rb"
require "test/unit"

class TestUppg1 < Test::Unit::TestCase

    def test_adder
        a = Connector.new("a")
        b = Connector.new("b")
        c = Connector.new("c")
        Adder.new(a, b, c)
        a.user_assign(10)
        b.user_assign(5)
        puts "c = "+c.value.to_s
        a.forget_value "user"
        c.user_assign(20)

        # a should now be 15
        assert_equal(15, a.value)
        assert_equal(c.value-b.value, a.value)

        b.forget_value "user"
        a.user_assign(15)
        c.user_assign(40)

        assert_equal(25, b.value)
        assert_equal(c.value-a.value, b.value)
    end

    def test_multiplier
        a = Connector.new("a")
        b = Connector.new("b")
        c = Connector.new("c")
        Multiplier.new(a, b, c)
        a.user_assign(10)
        b.user_assign(5)
        puts "c = "+c.value.to_s
        a.forget_value "user"
        c.user_assign(20)

        assert_equal(4, a.value)
        assert_equal(c.value/b.value, a.value)

        b.forget_value "user"
        a.user_assign(4)
        c.user_assign(40)

        assert_equal(10, b.value)
        assert_equal(c.value/a.value, b.value)
    end

    def test_c2f
        c,f = celsius2fahrenheit

        c.user_assign 100
        assert_equal(212, f.value)

        c.user_assign 0
        assert_equal(32, f.value)

        c.forget_value "user"
        f.user_assign 100
        assert_equal(37, c.value)
    end
end

