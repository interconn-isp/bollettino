# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Model
    RSpec.describe Slip do
      it 'is instantiated correctly' do
        payee = Payee.new
        payer = Payer.new
        payment_order = PaymentOrder.new

        described_class.new(
          payee: payee,
          payer: payer,
          payment_order: payment_order
        )
      end
    end
  end
end
