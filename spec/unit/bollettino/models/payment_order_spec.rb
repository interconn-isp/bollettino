require 'spec_helper'

RSpec.describe Bollettino::Payee do
  it 'is instantiated correctly' do
    described_class.new(
      numeric_amount: 54.31,
      text_amount: 'Cinquantaquattro/31',
      reason: 'Invoice INV-1391'
    )
  end
end
