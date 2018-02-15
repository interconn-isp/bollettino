# frozen_string_literal: true

module Bollettino
  module Renderer
    RSpec.describe Slip do
      subject { described_class }

      let(:slip) { instance_double('Bollettino::Model::Slip') }
      let(:payee) { instance_double('Bollettino::Model::Payee') }
      let(:payer) { instance_double('Bollettino::Model::Payer') }
      let(:payment_order) { instance_double('Bollettino::Model::PaymentOrder') }

      before do
        allow(slip).to receive(:payee).and_return(payee)
        allow(slip).to receive(:payer).and_return(payer)
        allow(slip).to receive(:payment_order).and_return(payment_order)
      end

      describe '.render' do
        let(:image) { instance_double('MiniMagick::Image') }

        before do
          allow(Payee).to receive(:render)
          allow(Payer).to receive(:render)
          allow(PaymentOrder).to receive(:render)
        end

        it 'renders the payee' do
          expect(Payee).to receive(:render)
            .with(image, slip.payee)
            .once

          subject.render(image, slip)
        end

        it 'renders the payer' do
          expect(Payer).to receive(:render)
            .with(image, slip.payer)
            .once

          subject.render(image, slip)
        end

        it 'renders the payment order' do
          expect(PaymentOrder).to receive(:render)
            .with(image, slip.payment_order)
            .once

          subject.render(image, slip)
        end
      end
    end
  end
end
