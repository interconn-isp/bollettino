require 'spec_helper'

RSpec.describe Bollettino::Renderer::SlipRenderer do
  subject { described_class }

  describe '.render' do
    it 'renders the slip' do
      slip = stub(
        payee: stub(),
        payer: stub(),
        payment_order: stub()
      )

      image = stub()

      Bollettino::Renderer::PayeeRenderer
        .expects(:render)
        .with(image, slip.payee)
        .once

      Bollettino::Renderer::PayerRenderer
        .expects(:render)
        .with(image, slip.payer)
        .once

      Bollettino::Renderer::PaymentOrderRenderer
        .expects(:render)
        .with(image, slip.payment_order)
        .once

      subject.render image, slip
    end
  end
end
