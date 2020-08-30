require "nokogiri"
require "open-uri"
require_relative "./events"

class Scraper

    @@doc = nil

    def self.get_events
        @@doc = Nokogiri::HTML(open("http://www.lexingtonsc.org/community-events"))
    end

    def self.create_events
        doc = @@doc.css('.events-list.all.row')
        index = 1
        @@doc.css('.events-list.all.row').each do |name|
            event = Events.new(name.css('div.col-xs-7.col-md-7 p').first.text.strip, name.css('div.col-xs-2.col-md-2.date-list p').first.text.strip, index)
            index += 1
        end
    end
end