require 'spec_helper'

RSpec.describe Bollettino::Generator do
  subject { described_class.new }

  describe '#generate!' do
    let(:slip) do
      rs = (('A'..'Z').to_a * 10).join('')

      stub(
        payee: stub(
          account_number: '0123456789',
          name: rs
        ),
        payment_order: stub(
          numeric_amount: 1,
          text_amount: rs,
          reason: rs
        ),
        payer: stub(
          name: rs,
          address: stub(
            street: rs,
            location: rs,
            zip: rs
          )
        )
      )
    end

    it 'writes the image' do
      image = mock()
      image
        .expects(:write)
        .with('slip.png')
        .once

      MiniMagick::Image
        .expects(:open)
        .once
        .returns(image)

      Bollettino::Renderer::SlipRenderer
        .expects(:render)
        .once

      subject.generate!(slip, 'slip.png')
    end
  end
end
