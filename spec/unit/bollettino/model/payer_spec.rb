# frozen_string_literal: true

module Bollettino
  module Model
    RSpec.describe Payer do
      subject do
        described_class.new(
          name: 'John Doe',
          address: address
        )
      end

      let(:address) { instance_double('Bollettino::Model::Address') }

      before do
        allow(address).to receive(:to_hash).and_return({})
      end

      it 'is instantiated correctly' do
        expect { subject }.not_to raise_error
      end
    end
  end
end
