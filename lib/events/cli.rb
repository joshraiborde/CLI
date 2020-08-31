class CLI

    def self.start
        Scraper.get_events
        Scraper.create_events
        self.display_events
        puts "Choose an event between 1 and #{Events.all.length}."
        input = gets.chomp.to_i
        if input > 0 && input < Events.all.length
            self.show_event(input)
        else 
            puts "Invalid selection.\n"
            puts "Please choose an event between 1 and #{Events.all.length}."
            input = gets.chomp.to_i
            self.show_event(input)
        end
    end

    def greeting
        puts "Welcome to the Lexington Community Events page."
        puts "Please select an event:"
        puts "Please wait while the events are loading..."
        puts "---------------------------"
        sleep(4)
        CLI.start
    end

    def self.display_events
        Events.all.each do |event|
            puts "#{event.index}. #{event.name.strip}"
        end
    end

    def self.show_event(index)
        chosen_event = Events.all.find{|event| index == event.index}
        puts "You have selected: #{index}. #{chosen_event.name}"
        puts "The date(s) for the event is/are:"
        puts chosen_event.date
    end
end