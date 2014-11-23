require 'spec_helper'

RSpec.describe Bollettino::Address do
  it 'is instantiated correctly' do
    described_class.new(
      street: '3681 Foggy Moor',
      zip: '19147-0834',
      city: 'Grayson',
      state: 'Pennsylvania'
    )
  end
end
