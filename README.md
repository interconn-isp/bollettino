# Bollettino

[![Build Status](https://travis-ci.org/interconn-isp/bollettino.svg?branch=master)](https://travis-ci.org/interconn-isp/bollettino)
[![Dependency Status](https://gemnasium.com/badges/github.com/interconn-isp/bollettino.svg)](https://gemnasium.com/github.com/interconn-isp/bollettino)
[![Maintainability](https://api.codeclimate.com/v1/badges/27f20f87ffab300c2530/maintainability)](https://codeclimate.com/github/interconn-isp/bollettino/maintainability)
[![Coverage Status](https://coveralls.io/repos/github/interconn-isp/bollettino/badge.svg?branch=master)](https://coveralls.io/github/interconn-isp/bollettino?branch=master)

Bollettino is a tool for generating Italian postal payment slips.

Don't know what a postal payment slip is? Then you probably don't need this
library. But here's an example anyway:

![Postal payment slip](https://raw.githubusercontent.com/interconn-isp/bollettino/master/example-slip.png)

See all those blank spaces? Bollettino takes care of filling them. All you need
is the data.

Bollettino is the successor to [Postino](https://github.com/interconn-isp/postino),
which used the now abandoned [prawn-templates](https://github.com/prawnpdf/prawn-templates).

## Installation

Bollettino depends on [ImageMagick](http://www.imagemagick.org/). Sorry, guys.

Add this line to your application's `Gemfile`:

```ruby
gem 'bollettino'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bollettino

## Usage

```ruby
payee = Bollettino::Model::Payee.new(
  account_number: '0123456789',
  name: 'Acme Inc.'
)

payer = Bollettino::Model::Payer.new(
  name: 'John Doe',
  address: Bollettino::Model::Address.new(
    street: '3681 Foggy Moor',
    zip: '19147-0834',
    location: 'Grayson'
  )
)

payment_order = Bollettino::Model::PaymentOrder.new(
  numeric_amount: 54.31,
  text_amount: 'Cinquantaquattro/31',
  reason: 'Invoice INV-1391'
)

slip = Bollettino::Model::Slip.new(
  payee: payee,
  payer: payer,
  payment_order: payment_order
)

generator = Bollettino::Generator.new
generator.generate!(slip, 'slip.png')
```

## Contributing

1. Fork it (https://github.com/interconn-isp/bollettino/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Related projects

- For a command line interface, see [bollettino-cli](https://github.com/interconn-isp/bollettino-cli).
- For converting numbers into words, see [Abaco](https://github.com/interconn-isp/abaco).

## Maintainers

Bollettino is developed and maintained by [Alessandro Desantis](https://github.com/alessandro1997).

## License

Bollettino is released under the MIT license.

[![InterConn](http://www.gravatar.com/avatar/b3f5893b97323096977545477e0066c5.jpg?s=100)](http://www.interconn.it)
