# Annal

Annal aims to solve a small problem I run into a bit ... reading and parsing groups of YAML or JSON files.

Instead of:
```ruby
Dir.glob('/path/*').each do |file|
  if file =~ %r(\.ya?ml\Z)
    YAML.parse(file)
  end
end
```

It would be:
```ruby
Annal::Collection.new('/path/*').documents
```
In the future, perhaps this will also get files from S3 or such. Crazier things have happened!

## Installation

Add this line to your application's Gemfile:

    gem 'annal'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install annal

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
