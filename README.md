# RbtraceExtended

require's rbtrace and optionally requires objspace and calls ObjectSpace.trace_object_allocations_start

```
require 'rbtrace'

if ENV['OBJECTSPACE_TRACE_OBJECT_ALLOCATIONS'] then
  require 'objspace'
  ObjectSpace.trace_object_allocations_start
end

```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rbtrace_extended'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rbtrace_extended

## Usage

By requiring this gem it will automatically require rbtrace. 
You can add an environment variable `OBJECTSPACE_TRACE_OBJECT_ALLOCATIONS=1` to also call `ObjectSpace.trace_object_allocations_start`.
This will let you get object allocations when performing a heap dump with rbtrace.

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/clintmod/rbtrace_extended.
