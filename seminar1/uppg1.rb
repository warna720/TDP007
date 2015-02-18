#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

def n_times(count, &block)
    count.times do block.call end
end


class Repeat
    def initialize(n)
        @n = n
    end

    def each(&block)
        @n.times do block.call end
    end
end

