class CLI

    def greeting
        puts "Welcome to the Lexington Community Events page."
        puts "Please select an event:"
        puts "---------------------------"
        Events.start
    end
end
 