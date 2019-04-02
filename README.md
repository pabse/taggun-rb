# Taggun
This is a ruby gem for the [Taggun](https://www.taggun.io) receipt OCR-Engine.

Currently we support the following scan types:

- [x] URL
- [ ] encoded
- [ ] file
- [ ] storage

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'taggun'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install taggun
```

## Usage
First you have to set your API key provided by Taggun.

Create an initializer `taggun.rb` with
```ruby
Taggun.configure do |config|
  config.api_key = 'your_api_key'
end
```

Then you can just call the Parser with
```ruby
taggun = Taggun::Parser.new

taggun.from_url(Taggun::SIMPLE, 'url_to_image')
```

The `form_xxx` methods return the Taggun responses. See https://api.taggun.io for details.

## TODOs
- Implement more scan types
- Documentation
- Add tests
- Publish to RubyGems


## Contributing
TODO

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
