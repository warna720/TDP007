#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class String
    def acronym
        self.split.inject("") {|result, entry | result + entry[0]}.upcase 
    end
end

