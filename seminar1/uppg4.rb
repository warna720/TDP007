#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

def find_it (items, &block)
    items.inject() {|a, b | block.call(a, b) ? a : b}
end

