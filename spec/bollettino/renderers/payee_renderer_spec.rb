require 'spec_helper'

RSpec.describe Bollettino::Renderer::PayeeRenderer do
  subject { described_class }

  describe '.render' do
    it 'renders the payee' do
      payee = stub(
        account_number: '0123456789',
        name: 'Acme Inc.'
      )

      image = stub()

      subject
        .expects(:write_text)
        .times(6)

      subject.render image, payee
    end
  end
end
