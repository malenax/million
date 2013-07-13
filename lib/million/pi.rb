require 'nokogiri'
require 'open-uri'
module Million
  class Pi
    attr_reader :value
    def self.url
      'http://www.eveandersson.com/pi/digits/1000000'
    end

    def initialize
      doc = Nokogiri::HTML(open( Million::Pi.url ))
      @value = doc.css('table pre').text().gsub("\n","")[2..-1] if doc
    end

    def [](index)
    	@value[index]
    end

    def find(string)
      @value.rindex(string)
    end
  end
end