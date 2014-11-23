require 'spec_helper'

RSpec.describe Bollettino::Renderer::PaymentOrderRenderer do
  subject { described_class }

  describe '.render' do
    it 'renders the payment_order' do
      payment_order = stub(
        text_amount: 'Millecentociquanta/25',
        numeric_amount: 1150.25,
        reason: 'Invoce INV-1234'
      )

      image = stub()

      subject
        .expects(:write_text)
        .times(8)

      subject.render image, payment_order
    end

    context 'when numeric_amount is longer than 7 digits' do
      it 'raises an error' do
        payment_order = stub(
          text_amount: 'Millecentociquanta/25',
          numeric_amount: 123456.78,
          reason: 'Invoce INV-1234'
        )

        image = stub()

        expect {
          subject.render image, payment_order
        }.to raise_error(Bollettino::Renderer::RenderingError)
      end
    end
  end
end
