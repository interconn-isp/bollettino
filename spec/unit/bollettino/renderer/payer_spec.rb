# frozen_string_literal: true
module Bollettino
  module Renderer
    RSpec.describe Payer do
      subject { described_class }

      let(:payer) { instance_double('Bollettino::Model::Payer') }
      let(:address) { instance_double('Bollettino::Model::Address') }

      before(:each) do
        allow(payer).to receive(:name).and_return('Acme Inc.')
        allow(payer).to receive(:address).and_return(address)
      end

      describe '.render' do
        let(:image) { instance_double('ImageMagick::Image') }

        before(:each) do
          allow(Address).to receive(:render)
          allow(subject).to receive(:write_text)
        end

        it 'renders the address' do
          expect(Address).to receive(:render)
            .with(image, payer.address)
            .once

          subject.render image, payer
        end

        it 'renders the payer' do
          expect(subject).to receive(:write_text)
            .exactly(4).times

          subject.render image, payer
        end
      end
    end
  end
end
