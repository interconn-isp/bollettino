# frozen_string_literal: true

module Bollettino
  module Model
    RSpec.describe Payee do
      subject do
        described_class.new(
          numeric_amount: 54.31,
          text_amount: 'Cinquantaquattro/31',
          reason: 'Invoice INV-1391'
        )
      end

      it 'is instantiated correctly' do
        expect { subject }.not_to raise_error
      end
    end
  end
end
