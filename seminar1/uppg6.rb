#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require('date')
require_relative('uppg5')

class Person
    attr_accessor :age

    def initialize (fname="", lname="", age=0)
        @name = PersonName.new(fname + " " + lname)
        @age = age
    end

    def name
        @name.fullname
    end

    def birthyear()
        Date.today.year - @age
    end
end

