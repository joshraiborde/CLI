class Events
    attr_accessor :input

    def self.chosen_event(input) 
        selected_event = Scraper.find(input)
        selected_event_date = Scraper.find_date(input)
        selected_event_name = selected_event.css('div.col-xs-7.col-md-7 p').first.text
        puts "You have selected: #{input}. #{selected_event_name}"
        puts "#{selected_event_date}"
    end

    def self.start
        Scraper.get_events
        Scraper.print_events
        puts "choose an event."
        input = gets.chomp.to_i
        if input > 0 && input < 117
            self.chosen_event(input)
        else 
            puts "Invalid selection.\n"
            puts "Choose another event."
            input = gets.chomp.to_i
            self.chosen_event(input)
        end
    end
end