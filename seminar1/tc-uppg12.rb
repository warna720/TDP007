#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg12"
require "test/unit"

class TestUppg12 < Test::Unit::TestCase

    def test_regnr
        assert_equal("FMA297", regnr("Min bil heter FMA297."))
        assert_equal("POP147", regnr("POP147"))

        assert(regnr("XQT784") == false)
        assert(regnr("BÅB123") == false)
    end
end
