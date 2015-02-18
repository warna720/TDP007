#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class PersonName
    def initialize (name = "")
        self.fullname = name
    end

    def fullname
        "#{@surname} #{@name}"
    end

    def fullname=(name)
        @name, @surname = name.split
    end
end

