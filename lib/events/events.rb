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

    # def create_from_array(scraped_array)
    #     scraped_array.each do |item|
    #         event = Event.new(item)
    #     end
    # end

#      attr_accessor :event, :date

#     @@all = []

#     attr_accessor :event, :date 
    
#     def initialize(events_array1)
#         @@all << self 
#     end
    
#     def self.all
#         @@all
#     end

#     def save
#         @@all << self 
#     end

#     def self.find(index)
#         @@all[index]
#     end

#     def events_array1
#         events_array = Nokogiri::HTML(open("http://www.lexingtonsc.org/community-events"))
#         puts events_array
#     end

# end
# attr_accessor :input
# def self.chosen_event(input) 
#     selected_event = Scraper.find(input)
#     selected_event_date = Scraper.find_date(input)
#     selected_event_name = selected_event.css('div.col-xs-7.col-md-7 p').first.text
#     puts "You have selected: #{input}. #{selected_event_name}"
#     puts "The date(s) for your selected is/are #{selected_event_date}."
# end

# def self.start
#     Scraper.get_events
#     Scraper.print_events
#     puts "choose an event."
#     input = gets.chomp.to_i
#     if input > 0 && input < 117
#         self.chosen_event(input)
#     else 
#         puts "Invalid selection.\n"
#         puts "Choose another event."
#         input = gets.chomp.to_i
#         self.chosen_event(input)
#     end
# end