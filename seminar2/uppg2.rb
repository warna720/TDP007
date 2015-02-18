#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'rexml/document'

def hashify (e)
    info = {}

    targets = { "when" => ".//span[@class='dtstart']",
                "summary" => ".//span[@class='summary']",
                "website" => ".//a[@target='_NEW']",
                "poster" => ".//a[@class='userLink ']",
                "locality" => ".//span[@class='locality']",
                "region" => ".//span[@class='region']",
                "description" => ".//td[@class='description']/p/",
                "fn" => ".//strong[@class='org fn']",
                "address" => ".//span[@class='street-address']",
                "cost" => ".//table[@style='width: 100%;']/tr[2]/td[2]"}

    targets.each do |k,v|
        target = e.elements[v]
        if target and target.text
            info[k] = target.text
        end
    end
    info
end

def print_events(events)
    events.each do |event|
        event.each do |k,v|
            puts "#{k}: " + v
        end
        puts
    end
end

src = File.open("calendar.html")
doc = REXML::Document.new(src)

events = []

doc.elements.each("//div[@class='vevent']") do |e|
    events.push(hashify(e))
end

#print_events(events)
