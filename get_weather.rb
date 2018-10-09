#!/usr/bin/env ruby


require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'net/http'
require 'json'
require './weather_fetcher'
require './weather_parser'


fetcher_result = WeatherFetcher.new(:city => 'Kazan').result
parser_result = WeatherParser.new(fetcher_result)

puts parser_result.result

