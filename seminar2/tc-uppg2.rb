#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg2"
require "test/unit"

class TestUppg2 < Test::Unit::TestCase
    require 'rexml/document'

    def test_all
        src = File.open("calendar.html")
        doc = REXML::Document.new(src)

        events = []

        doc.elements.each("//div[@class='vevent']") do |e|
            events.push(hashify(e))
        end

        assert_equal(8, events.length)
        assert_equal("Free", events[1]["cost"])
        assert_equal("http://www.cfrc.ca", events[2]["website"])
    end
end
