# Omniauth::Wrapper

Simple Omniauth hash wrapper for Facebook.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-wrapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-wrapper

## Usage

``` ruby
  @wrapper = Omniauth::Wrapper.init(auth_hash)
  @wrapper.provider # returns provider
  @wrapper.access_token # returns access token
  @wrapper.uid # returns uid
  @wrapper.token_expires_at # returns expires ad
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
