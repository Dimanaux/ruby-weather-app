#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'net/http'
require 'json'
require 'dotenv'
require './weather_fetcher'
require './weather_parser'


city = ARGV.first || 'Kazan'

fetcher_result = WeatherFetcher.new(:city => city).result
parser_result = WeatherParser.new(fetcher_result)

puts "Weather in #{city}"
puts parser_result.result

