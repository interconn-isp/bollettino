# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Model
    RSpec.describe Payer do
      it 'is instantiated correctly' do
        address = Bollettino::Model::Address.new

        described_class.new(
          name: 'John Doe',
          address: address
        )
      end
    end
  end
end
