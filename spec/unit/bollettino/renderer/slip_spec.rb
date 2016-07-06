# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Renderer
    RSpec.describe Slip do
      subject { described_class }

      describe '.render' do
        it 'renders the slip' do
          slip = stub(
            payee: stub,
            payer: stub,
            payment_order: stub
          )

          image = stub

          Payee
            .expects(:render)
            .with(image, slip.payee)
            .once

          Payer
            .expects(:render)
            .with(image, slip.payer)
            .once

          PaymentOrder
            .expects(:render)
            .with(image, slip.payment_order)
            .once

          subject.render image, slip
        end
      end
    end
  end
end
