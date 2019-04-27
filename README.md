# GreekABC

![Gem](https://img.shields.io/gem/v/greek_abc.svg?color=rgb%28100%2C%20180%2C%200%29&label=gem%20version)

Gem for Greek alphabet manipulations

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'greek_abc'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install greek_abc

## Usage

```ruby
require 'greek_abc'

abc = GreekABC::Alphabet.new

psi = abc.find_letter_by(name: 'Psi') # => <..@lower="ψ", @name="Psi", @position=23, @upper="Ψ">
eta = abc.find_letter_by(position: 7) # => <..@lower="η", @name="Eta", @position=7, @upper="Η">

puts psi # => Letter #23 'Psi', lowercase 'ψ', uppercase 'Ψ'
```

### Get all letters

```ruby
abc = GreekABC::Alphabet.new
puts abc.letters
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vladyio/greek_abc.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
