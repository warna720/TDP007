#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

def longest_string (items)
    items.max { |a, b | a.length <=> b.length }
end
