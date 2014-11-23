# Bollettino

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
payee = Bollettino::Payee.new(
  account_number: '0123456789',
  name: 'Acme Inc.'
)

payer = Bollettino::Payer.new(
  name: 'John Doe',
  address: Bollettino::Address.new(
    street: '3681 Foggy Moor',
    zip: '19147-0834',
    location: 'Grayson'
  )
)

payment_order = Bollettino::PaymentOrder.new(
  numeric_amount: 54.31,
  text_amount: 'Cinquantaquattro/31',
  reason: 'Invoice INV-1391'
)

slip = Bollettino::Slip.new(
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
