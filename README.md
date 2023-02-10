# GreekABC

![Gem](https://img.shields.io/gem/v/greek_abc.svg?color=rgb%28100%2C%20180%2C%200%29&label=gem%20version)

<img src=".logo.png" width="200px" align="right">

Gem for Greek alphabet manipulations

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'greek_abc', '~> 0.4.4'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install greek_abc

## Usage

Add `require 'greek_abc'` to your script.

#### Single letters

```ruby
GreekABC::Alphabet.alpha # => #<GreekABC::Letter:0x0000557ef0e4fda8 @position=1, @name="Alpha", @lower="α", @upper="Α">

GreekABC::Alphabet.omega # => #<GreekABC::Letter:0x0000557ef0e37a78 @position=24, @name="Omega", @lower="ω", @upper="Ω">
```

#### Lookup

```ruby
abc = GreekABC::Alphabet.new

psi = abc.find_letter_by(name: 'Psi') # => <..@lower="ψ", @name="Psi", @position=23, @upper="Ψ">
eta = abc.find_letter_by(position: 7) # => <..@lower="η", @name="Eta", @position=7, @upper="Η">

puts psi # => Letter #23 'Psi', lowercase 'ψ', uppercase 'Ψ'
```

#### `Letter` methods

```ruby
abc = GreekABC::Alphabet.new

omega = abc.find_letter_by(name: 'Omega').lower # => "ω"
omega = abc.find_letter_by(name: 'Omega').upper # => "Ω"
omega = abc.find_letter_by(name: 'Omega').position # => 24

alpha = abc.find_letter_by(position: 1).name # => "Alpha"
```

#### Get all letters

```ruby
abc = GreekABC::Alphabet.new
puts abc.letters
```

Also get letters as a hash:

```ruby
abc = GreekABC::Alphabet.new
puts abc.to_h # => {"Alpha"=>{:position=>1, :lower=>"α", :upper=>"Α"}
```

#### Basic sets of letters

- Hash with letters and their names

```ruby
abc = GreekABC::ALPHABET # => {"Alpha"=>"α", "Beta"=>"β", ...}
```

- Lowercase letters

```ruby
abc = GreekABC::LOWERS # => ["α", "β", ...]
```

- Uppercase letters

```ruby
abc = GreekABC::UPPERS # => ["Α", "Β", ...]
```

- Lowercase and uppercase together

```ruby
abc = GreekABC::LOWERS_AND_UPPERS
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vladyio/greek_abc.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Changelog

See [CHANGELOG](CHANGELOG.md).
