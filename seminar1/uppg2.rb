#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

def faculty(n)
    (1..n).inject(1) { |result, entry | result * entry}
end

