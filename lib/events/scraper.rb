require "nokogiri"
require "open-uri"
require "pry"
class Scraper

    def self.get_events
        @@doc = Nokogiri::HTML(open("http://www.lexingtonsc.org/community-events"))        
    end

    def self.print_events
        @@doc.css('.events-list.all.row').each_with_index do |event, indx|
            puts "#{indx +1}. " + event.css('div.col-xs-7.col-md-7 p').first.text
        end
    end

    def self.find(index)
        @@doc.css('.events-list.all.row')[index.to_i - 1]
    end

    def self.find_date(index)
        @@doc.css('.date-list')[index.to_i - 1].text.strip
    end
end