#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require_relative "./uppg11"
require "test/unit"

class TestUppg11 < Test::Unit::TestCase

    def test_tag_names
        html = '<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="sv"><head><meta content="/images/google_favicon_128.png" itemprop="image">'

        assert_equal(["!doctype", "html", "head", "meta"], tag_names(html))
        assert_equal([], tag_names("Alla Älskar Kebab"))
        assert_equal([], tag_names(""))
    end
end
