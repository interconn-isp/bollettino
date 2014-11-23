require 'spec_helper'

RSpec.describe Bollettino::Payer do
  it 'is instantiated correctly' do
    address = Bollettino::Address.new

    described_class.new(
      name: 'John Doe',
      address: address
    )
  end
end
