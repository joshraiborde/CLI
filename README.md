# CLI

This is the first project for Flatiron.
It's called CLI.
CLI stands for Command Line Interface.
This gem is allows you to use cli to find out the what events are happening in and around Lexington County.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'CLI'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install CLI

## Usage

To start the app, make sure you're in the bin directory, type into the terminal "bin/run"
A couple of messages will be displayed, welcoming you to the app
and you will be asked to wait while all the events are being loaded.

After all the numbered events are loaded, you are asked to make a selection within the range that is displayed.
The range is a dynamic number, meaning it will change, depending on if events have already past and if more events are added to the calendar of events.

Type in a number of the event that you would like to know the date(s) of and  press "enter"
The app will display the event and the date(s) of the event. 

That is the end of the app.

After the app has displayed the event, you can type in "bin/run" if you want to start over again.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/CLI. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/CLI/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CLI project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/CLI/blob/master/CODE_OF_CONDUCT.md).
