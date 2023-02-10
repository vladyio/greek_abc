# GreekABC

![Gem](https://img.shields.io/gem/v/greek_abc.svg?color=rgb%28100%2C%20180%2C%200%29&label=gem%20version)

<img src=".logo.png" width="200px" align="right">

Greek alphabet as a gem, nothing extra.

Well documented, covered with tests and RBS.

## Installation

> [Legacy v0.4.4 branch]()

Add this line to your application's Gemfile:

```ruby
gem 'greek_abc', '~> 2.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install greek_abc

## Usage

**Get an array of all letters**

```ruby
GreekABC::Alphabet.new.letters
```

**Look up a letter by attributes**

```ruby
GreekABC::Alphabet.new.find_letter(name: 'lambda')
GreekABC::Alphabet.new.find_letter(position: 5)
```

**Easily reach for the letter attributes**

```ruby
l = GreekABC::Alphabet.new.find_letter(name: 'lambda')

puts [l.name, l.position, l.lower]
```

**Get the ABC as a hash:**

```ruby
abc = GreekABC::Alphabet.new
puts abc.to_h # => {"Alpha"=>{:position=>1, :lower=>"α", :upper=>"Α" ...
```

**Print print print!**

```ruby
puts GreekABC::Alphabet.new.letters

# ...
# Letter #16 'Pi', lowercase 'π', uppercase 'Π'
# Letter #17 'Rho', lowercase 'ρ', uppercase 'Ρ'
# Letter #18 'Sigma', lowercase 'σ / ς', uppercase 'Σ'
# ...
```

**✨Alternative✨ lowercase Sigma support**

```ruby
GreekABC::Alphabet.new.find_letter(name: :sigma)

# <GreekABC::Letter:0x00000001078e4c90
#  @lower="σ",
#  @lower_alt="ς", <== cool, right?
#  @name="Sigma",
#  @position=18,
#  @upper="Σ">
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
