#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg8"
require "test/unit"

class TestUppg8 < Test::Unit::TestCase

    def test_acronym
        assert_equal("LOL", "Laugh out loud".acronym)
        assert_equal("DWIM", "Do what I mean!!".acronym)
        assert_equal("", "".acronym)
    end
end
