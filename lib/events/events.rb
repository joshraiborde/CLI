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
        self.all[input-1]
        selected_event = Scraper.find(input)
        selected_event_date = Scraper.find_date(input)
        selected_event_name = selected_event.css('div.col-xs-7.col-md-7 p').first.text
    end

    def self.find_chosen_event(index)
        self.all.find{|event| index == event.index}
    end

    def self.find_events(input)
        self.all.select do |event|
            event.name.includes?(input)
        end
    end

    def self.display_events
        self.all.each do |event|
            puts "#{event.index}. #{event.name.strip}"
        end
    end

end