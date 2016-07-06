# frozen_string_literal: true
module Bollettino
  module Model
    RSpec.describe Payee do
      subject do
        described_class.new(
          account_number: '0123456789',
          name: 'Acme Inc.'
        )
      end

      it 'is instantiated correctly' do
        expect { subject }.not_to raise_error
      end
    end
  end
end
