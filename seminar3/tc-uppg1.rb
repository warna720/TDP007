#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg1"
require "test/unit"

class TestUppg1 < Test::Unit::TestCase

    def test_all

        kalle = Person.new("Volvo", "58435", 2, "M", 32)
        assert_equal(15.66, kalle.evaluate_policy("policy.rb"))

        kalle = Person.new("Mercedes", "58937", 16, "M", 40)
        assert_equal(25, kalle.evaluate_policy("policy.rb"))
    end
end
