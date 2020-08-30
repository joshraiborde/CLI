class CLI

    def self.start
        Scraper.get_events
        Scraper.create_events
        self.display_events
        puts "Choose an event."
        input = gets.chomp.to_i
        #binding.pry
        if input > 0 && input < Events.all.length
            self.show_event(input)
            #Events.chosen_event(input)
        else 
            puts "Invalid selection.\n"
            puts "Choose another event."
            input = gets.chomp.to_i
            self.show_event(input)
        end
    end

    def greeting
        puts "Welcome to the Lexington Community Events page."
        puts "Please select an event:"
        puts "---------------------------"
        CLI.start
    end

    def self.display_events
        Events.all.each do |event|
            puts "#{event.index}. #{event.name.strip}"
        end
    end

    def self.show_event(index)
        chosen_event = Events.all.find{|event| index == event.index}
        #binding.pry
        puts "You have selected: #{index}. #{chosen_event.name}"
        puts chosen_event.date
    end
end

#     def call
#         Scraper.get_events
#         self.start

#     end

# def list_events
#     Scraper.print_events

# end
    # require_relative "cli/version"
    # require  "pry"
    # require "open-uri"
    # require "nokogiri"

    # require_relative "cli/scraper"


    # def start
    #     puts "Welcome to the Lexington Community Events page."
    #     puts "These are the events happening this year"
    #     puts "Please select a numbered event:"
    #     puts "---------------------------"
    #     Events.start
    #     (should i delete?? the lines below)
    #     input = gets.chomp.to_i
    #     if input > 0 && input < 117
    #         Events.chosen_event(input)
    #     else 
    #         puts "Invalid selection.\n"
    #         puts "Choose another event."
    #         input = gets.chomp.to_i
    #         Events.chosen_event(input)
    #     end
        

    # end

    # def call
    #     input = ""
    #     while input != "exit"
        #     puts "Welcome to the Lexington Community Events page."
    #     puts "These are the events happening this year"
    #     puts "Please select a numbered event:"
    #     puts "---------------------------"
    #     Events.start
    #       input = gets.strip
    #       case input
    #       when "list"
    #         list_articles
    #       when "exit"
    #         puts "Goodbye"
    #         break
    #       else
    #         system("open #{@newsletter.articles[input.to_i-1].url}")
    #       end
    #     end
    #   end