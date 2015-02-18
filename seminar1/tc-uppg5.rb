#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg5"
require "test/unit"

class TestUppg5 < Test::Unit::TestCase

    def test_initialize
        p = PersonName.new()
        assert_equal(" ", p.fullname)

        p.fullname = "Knugen Kung"
        assert_equal("Kung Knugen", p.fullname)

        q = PersonName.new("First Last")
        assert_equal("Last First", q.fullname)

        q.fullname = ""
        assert_equal(" ", q.fullname)
    end

    def test_fullname
        q = PersonName.new("First Last")
        assert_equal("Last First", q.fullname)

        q.fullname = ""
        assert_equal(" ", q.fullname)

        q.fullname = "Knugen Kung"
        assert_equal("Kung Knugen", q.fullname)
    end
end
