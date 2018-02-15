# frozen_string_literal: true

module Bollettino
  module Model
    RSpec.describe Address do
      subject do
        described_class.new(
          street: '3681 Foggy Moor',
          zip: '19147-0834',
          city: 'Grayson',
          state: 'Pennsylvania'
        )
      end

      it 'is instantiated correctly' do
        expect { subject }.not_to raise_error
      end
    end
  end
end
