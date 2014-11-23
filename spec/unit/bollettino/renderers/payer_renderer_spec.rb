require 'spec_helper'

RSpec.describe Bollettino::Renderer::PayerRenderer do
  subject { described_class }

  describe '.render' do
    it 'renders the payer' do
      payer = stub(
        name: 'Acme Inc.',
        address: stub()
      )

      image = stub()

      Bollettino::Renderer::AddressRenderer
        .expects(:render)
        .with(image, payer.address)
        .once

      subject
        .expects(:write_text)
        .times(4)

      subject.render image, payer
    end
  end
end
