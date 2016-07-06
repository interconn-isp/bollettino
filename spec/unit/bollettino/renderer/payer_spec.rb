# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Renderer
    RSpec.describe Payer do
      subject { described_class }

      describe '.render' do
        it 'renders the payer' do
          payer = stub(
            name: 'Acme Inc.',
            address: stub
          )

          image = stub

          Address
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
  end
end
