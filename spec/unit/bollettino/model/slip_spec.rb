# frozen_string_literal: true

module Bollettino
  module Model
    RSpec.describe Slip do
      subject do
        described_class.new(
          payee: payee,
          payer: payer,
          payment_order: payment_order
        )
      end

      let(:payee) { instance_double('Bollettino::Model::Payee') }
      let(:payer) { instance_double('Bollettino::Model::Payer') }
      let(:payment_order) { instance_double('Bollettino::Model::PaymentOrder') }

      before do
        allow(payee).to receive(:to_hash).and_return({})
        allow(payer).to receive(:to_hash).and_return({})
        allow(payment_order).to receive(:to_hash).and_return({})
      end

      it 'is instantiated correctly' do
        expect { subject }.not_to raise_error
      end
    end
  end
end
