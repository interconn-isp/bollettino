# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Renderer
    RSpec.describe Address do
      subject { described_class }

      describe '.render' do
        it 'renders the address' do
          address = stub(
            street: 'Via Fasulla, 123',
            location: 'Roma',
            zip: '00100'
          )

          image = stub

          subject
            .expects(:write_text)
            .times(6)

          subject.render image, address
        end
      end
    end
  end
end
