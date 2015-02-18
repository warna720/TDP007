#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

#It was hard to write, so it should be hard to read

class TableParser
    attr_accessor :content, :re_c, :re_r

    def initialize (content="", re_r = //, re_c = /(?<columns>^\s+(\s+[[:alnum:]]+)+\n)/)
        @content = content        
        @re_c = re_c #regex columns
        @re_r = re_r #regex rows
    end

    def hashify (key = 0)
        #Hash all data, each header column will be the key and each row column will be the value.
        #The master key will be the n:th column of param key ↑.

        columns  = @content.match(@re_c)["columns"].split
        rows     = @content.scan(@re_r).map {|row| row.join.split}
        results  = {}

        rows.each do |row|
            result = {}
            row.length.times do |counter|
                result[columns[counter].downcase] = row[counter]
            end
            results[row[key].downcase] = result
        end
        results
    end
end

def diff(hash, a, b)
    hash.sort_by {|k, v| (v[a].to_i-v[b].to_i).abs }
end

def minDiff(hash, a, b)
    diff(hash, a, b).first
end


# Create regex for the rows we want to handle.
re_rows_football = /(?<row>\w+(\s+\d+)+\s+)-(?<row>(\s+\d+)+)\n/
football_content = File.readlines("football.txt").join #Read as one whole string

table = TableParser.new(football_content, re_rows_football)
teams = table.hashify #Magic

#print minDiff(teams, "f", "a") # prints: ["aston_villa", {"team"=>"Aston_Villa", "p"=>"38", "w"=>"12", "l"=>"14", "d"=>"12", "f"=>"46", "a"=>"47", "pts"=>"50"}]
#diff(teams, "f", "a")



# Create regex for the rows we want to handle.
re_rows_weather = /^\s+(?<day>((\d+(\.\d)?)(\s+)?){2})(\*\s+)?(?<day>\d+(\.\d)?)/
weather_content = File.readlines("weather.txt").join #Read as one whole string

table.re_r = re_rows_weather #Change the previously initiated object regex rows to the new (for the weather).
table.content = weather_content #Change the previously initiated object's content to the new (weather content).

days = table.hashify #Magic

#print minDiff(days, "mnt", "mxt") # prints: ["14", {"dy"=>"14", "mxt"=>"61", "mnt"=>"59"}]
#diff(days, "mnt", "mxt")


