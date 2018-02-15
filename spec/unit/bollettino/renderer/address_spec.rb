# frozen_string_literal: true

module Bollettino
  module Renderer
    RSpec.describe Address do
      subject { described_class }

      let(:address) { instance_double('Bollettino::Model::Address') }

      before do
        allow(address).to receive(:street).and_return('Via Fasulla, 123')
        allow(address).to receive(:location).and_return('Roma')
        allow(address).to receive(:zip).and_return('00100')
      end

      describe '.render' do
        let(:image) { instance_double('MiniMagick::Image') }

        it 'renders the address' do
          expect(subject).to receive(:write_text)
            .exactly(6).times

          subject.render image, address
        end
      end
    end
  end
end
