# JanValidator

[![Build Status](https://travis-ci.org/s-osa/jan_validator.svg?branch=master)](https://travis-ci.org/s-osa/jan_validator)

Jan validator for Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jan_validator'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```ruby
$ gem install jan_validator
```

## Usage

```ruby
class Product < ActiveRecord::Base
  validates :jan_code, jan: true
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jan_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
