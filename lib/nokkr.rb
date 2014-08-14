require "nokkr/version"
require 'open-uri'
require 'uri'
require 'nokogiri'

module Nokkr
  class WwwPage
    attr_accessor :url, :page, :base_url

    def initialize(url)
      @url = url
      @page = open_url
      @base_url = url.split(/(?<!\/)\/(?!\/)/).first
    end

    def open_url
      Nokogiri::HTML(open(@url))
    rescue OpenURI::HTTPError => e
      warn "Page doesn't exist, setting nil"
      nil
    rescue URI::InvalidURIError
      encode_open_url
    end

    def encode_open_url
      Nokogiri::HTML(open(URI.encode(@url)))
    rescue OpenURI::HTTPError
      warn "Page doesn't exist, setting nil"
      nil
    end

    def page_exists?
      !@page.nil?
    end
  end
end
