#encoding: utf-8
#require "net/http"
#require 'uri'
require 'faraday'
require "browser"

class HomeController < ApplicationController
  def index
  end

  def welcome
		start_time = Time.now
		@name = Faraday.head('http://mosaico.no-ip.org/mosaico/default/index')
		@end_time = Time.now - start_time
  end
end