# frozen_string_literal: true
module Bollettino
  module Model
    RSpec.describe Payer do
      let(:address) { instance_double('Bollettino::Model::Address') }

      before(:each) do
        allow(address).to receive(:to_hash).and_return({})
      end

      subject do
        described_class.new(
          name: 'John Doe',
          address: address
        )
      end

      it 'is instantiated correctly' do
        expect { subject }.not_to raise_error
      end
    end
  end
end
