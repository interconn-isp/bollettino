# frozen_string_literal: true
module Bollettino
  module Renderer
    RSpec.describe PaymentOrder do
      subject { described_class }

      let(:payment_order) { instance_double('Bollettino::Model::PaymentOrder') }

      before(:each) do
        allow(payment_order).to receive(:text_amount).and_return('Millecentociquanta/25')
        allow(payment_order).to receive(:numeric_amount).and_return(1150.25)
        allow(payment_order).to receive(:reason).and_return('Invoice INV-1234')
      end

      describe '.render' do
        let(:image) { instance_double('MiniMagick::Image') }

        it 'renders the payment order' do
          expect(subject).to receive(:write_text)
            .exactly(8).times

          subject.render image, payment_order
        end

        context 'when numeric_amount is longer than 7 digits' do
          before(:each) do
            allow(payment_order).to receive(:numeric_amount).and_return(123_456.78)
          end

          it 'raises an error' do
            expect {
              subject.render image, payment_order
            }.to raise_error(RenderingError)
          end
        end
      end
    end
  end
end
