#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg6"
require "test/unit"

class TestUppg6 < Test::Unit::TestCase

    def test_initialize
        p = Person.new("Knugen", "Kung", 65)
        assert_equal("Kung Knugen", p.name)

        q = Person.new("", "", 65)
        assert_equal(" ", q.name)
    end

    def test_age
        p = Person.new("Knugen", "Kung", 65)
        assert_equal(65, p.age)

        p.age = 21
        assert_equal(21, p.age)
    end

    def test_birthyear
        p = Person.new("Knugen", "Kung", 65)
        assert_equal(1950, p.birthyear)

        p.age = 21
        assert_equal(1994, p.birthyear)
    end
end
