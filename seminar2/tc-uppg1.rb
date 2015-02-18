#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg1"
require "test/unit"

class TestUppg1 < Test::Unit::TestCase

    def test_all
        re_rows_football = /(?<row>\w+(\s+\d+)+\s+)-(?<row>(\s+\d+)+)\n/
        football_content = File.readlines("football.txt").join #Read as one whole string

        table = TableParser.new(football_content, re_rows_football)
        teams = table.hashify

        assert_equal(20, diff(teams, "f", "a").length)

        assert_equal(["aston_villa", {"team"=>"Aston_Villa", "p"=>"38", "w"=>"12", "l"=>"14", "d"=>"12", "f"=>"46", "a"=>"47", "pts"=>"50"}], 
                    minDiff(teams, "f", "a"))

        assert_equal(["arsenal", {"team"=>"Arsenal", "p"=>"38", "w"=>"26", "l"=>"9", "d"=>"3", "f"=>"79", "a"=>"36", "pts"=>"87"}], 
                    diff(teams, "f", "a").last)
    end
end
