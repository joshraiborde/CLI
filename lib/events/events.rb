class Events
    attr_accessor :name, :index, :date
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, date, index)
        @name = name
        @index = index
        @date = date
        @@all << self
    end

    def self.chosen_event(input) 
        selected_event = Scraper.find(input)
        selected_event_date = Scraper.find_date(input)
        selected_event_name = selected_event.css('div.col-xs-7.col-md-7 p').first.text
        puts "You have selected: #{input}. #{selected_event_name}"
        puts "#{selected_event_date}"
    end
end