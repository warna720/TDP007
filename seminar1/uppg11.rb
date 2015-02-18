#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

def tag_names (source)
    source.scan(/<!?\w+>?/).map {| tag | tag.gsub(/[<]|[>]/, '')}
end

