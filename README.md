# Capistrano::Sinatra::Console

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/capistrano/sinatra/console`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-sinatra-console', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-sinatra-console


## Usage
[capistrano-rails-console](https://github.com/ydkn/capistrano-rails-console)


Require in `Capfile` to use the default task:

```ruby
require 'capistrano/sinatra/console'
```

Run a remote sinatra console with:

    $ cap production sinatra:console
 

## Options

### Sinatra environment

```ruby
set :console_env, :production # use different environment than deployment environment (rack_env)
```

### Bin

Reference: [Rails console equivalent for Sinatra](http://dlj.bz/eA5d2X)

Configurable options, shown here with defaults:

```ruby
set :sinatra_bin, 'irb -I. -r api.rb'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GraysonChen/capistrano-sinatra-console.

