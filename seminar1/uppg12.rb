#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

def regnr(reg)
    reg.scan(/[a-pA-Pr-zR-Z]{3}\d{3}/).length > 0 ? $& : false
end

