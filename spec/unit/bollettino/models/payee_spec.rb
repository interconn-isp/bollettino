require 'spec_helper'

RSpec.describe Bollettino::Payee do
  it 'is instantiated correctly' do
    described_class.new(
      account_number: '0123456789',
      name: 'Acme Inc.'
    )
  end
end
