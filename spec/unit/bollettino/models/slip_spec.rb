require 'spec_helper'

RSpec.describe Bollettino::Slip do
  it 'is instantiated correctly' do
    payee = Bollettino::Payee.new
    payer = Bollettino::Payer.new
    payment_order = Bollettino::PaymentOrder.new

    described_class.new(
      payee: payee,
      payer: payer,
      payment_order: payment_order
    )
  end
end
