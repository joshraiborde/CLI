class Events
    attr_accessor :selection

    def self.chosen_event 
        selected_event = Scraper.find(self.selection)
        selected_event_date = Scraper.find_date(self.selection)
        selected_event_name = selected_event.css('div.col-xs-7.col-md-7 p').first.text
        puts "You have selected: #{self.selection}. #{selected_event_name}"
        puts "#{selected_event_date}"
    end

    def self.start
        Scraper.get_events
        Scraper.print_events
        puts "choose an event."
        binding.pry
        self.selection = gets.chomp.to_i
        if self.selection > 0 && self.selection < 117
            self.chosen_event
        else 
            puts "invalid selection\n"
            puts "Choose another event."
            self.selection = gets.chomp.to_i
            self.chosen_event
        end
    end
end