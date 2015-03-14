#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./rdparse"
require "test/unit"

class TestLogicLang < Test::Unit::TestCase

    def test_all
        lang = Logic.new
        lang.log(false)

        assert(lang.parse("(set a true)"))
        assert(lang.parse("a"))

        assert_false(lang.parse("(set b false)"))
        assert_false(lang.parse("b"))

        assert(lang.parse("(or a b)"))
        assert_false(lang.parse("(and a b)"))
        assert_false(lang.parse("(not a)"))
        assert(lang.parse("(not b)"))
    end
end
