require 'spec_helper'

RSpec.describe 'The generation' do
  let(:payee) do
    Bollettino::Payee.new(
      account_number: '0123456789',
      name: 'Acme Inc.'
    )
  end

  let(:payer) do
    Bollettino::Payer.new(
      name: 'John Doe',
      address: Bollettino::Address.new(
        street: '3681 Foggy Moor',
        zip: '19147-0834',
        location: 'Grayson'
      )
    )
  end

  let(:payment_order) do
    Bollettino::PaymentOrder.new(
      numeric_amount: 54.31,
      text_amount: 'Cinquantaquattro/31',
      reason: 'Invoice INV-1391'
    )

  end

  let(:slip) do
    Bollettino::Slip.new(
      payee: payee,
      payer: payer,
      payment_order: payment_order
    )
  end

  let(:slip_path) { File.expand_path('../../../tmp/slip.png', __FILE__) }

  before(:each) do
    FileUtils.rm(slip_path) if File.exist?(slip_path)
  end

  it 'creates the slip' do
    expect {
      Bollettino::Generator.new.generate!(slip, slip_path)
    }.to change{File.exist?(slip_path)}.from(false).to(true)
  end
end
