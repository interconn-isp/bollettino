require 'spec_helper'

RSpec.describe Bollettino::Generator do
  subject { described_class.new }

  describe '#generate' do
    let(:slip) do
      rs = (('A'..'Z').to_a*10).join('')

      Bollettino::Slip.new(
        payee: Bollettino::Payee.new(
          account_number: '0123456789',
          name: rs
        ),
        payment_order: Bollettino::PaymentOrder.new(
          numeric_amount: 1,
          text_amount: rs,
          reason: rs
        ),
        payer: Bollettino::Payer.new(
          name: rs,
          address: Bollettino::Address.new(
            street: rs,
            city: rs,
            state: rs,
            zip: rs
          )
        )
      )
    end

    let(:slip_path) { File.expand_path('../../../tmp/test_slip.png', __FILE__) }

    before(:each) do
      FileUtils.rm(slip_path) if File.exist?(slip_path)
    end

    it 'generates a PNG for the given slip' do
      expect {
        subject.generate(slip, slip_path)
      }.to change{ File.exist?(slip_path) }.from(false).to(true)
    end
  end
end
