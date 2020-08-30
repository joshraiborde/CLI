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
            #binding.pry
            event = Events.new(name.css('div.col-xs-7.col-md-7 p').first.text.strip, name.css('div.col-xs-2.col-md-2.date-list p').first.text.strip, index)
            
            # event.date = name.css('div')[0].css('p')[0].text.strip
            index += 1
        end
    end
end

    # def self.find(index)
    #     @@doc.css('.events-list.all.row')[index.to_i - 1]
    # end

    # def self.find_date(index)
    #     @@doc.css('.date-list')[index.to_i - 1].text.strip
    # end

# class Scraper

#     def self.get_events
#         @@doc = Nokogiri::HTML(open("http://www.lexingtonsc.org/community-events"))        
#     end

#     def self.print_events
#         @@doc.css('.events-list.all.row').each_with_index do |event, indx|
#             puts "#{indx +1}. " + event.css('div.col-xs-7.col-md-7 p').first.text
#         end
#     end

#     def self.find(index)
#         @@doc.css('.events-list.all.row')[index.to_i - 1]
#     end

#     def self.find_date(index)
#         @@doc.css('.date-list')[index.to_i - 1].text.strip
#     end
# end



#     def self.get_events
#         html= open("http://www.lexingtonsc.org/community-events")
#         doc = Nokogiri::HTML(html)
#         events_table = doc.css(".chamber-events")
#         event = events_table.css(".col-xs-7 p")
#         event.each do |e|
#         #binding.pry
#         Event.new()
#         end
#         # @@doc = Nokogiri::HTML(open("http://www.lexingtonsc.org/community-events"))
#     end
# end
# Scraper.get_events
# Scraper.create_events