# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Model
    RSpec.describe Payee do
      it 'is instantiated correctly' do
        described_class.new(
          account_number: '0123456789',
          name: 'Acme Inc.'
        )
      end
    end
  end
end
