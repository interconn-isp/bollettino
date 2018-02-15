# frozen_string_literal: true

RSpec.describe Bollettino::Generator do
  subject { described_class.new }

  describe '#generate!' do
    let(:slip) { instance_double('Bollettino::Model::Slip') }
    let(:image) { instance_double('MiniMagick::Image') }

    before do
      allow(MiniMagick::Image).to receive(:open).and_return(image)
      allow(Bollettino::Renderer::Slip).to receive(:render)
    end

    it 'creates the image' do
      expect(image).to receive(:write)
        .with('slip.png')
        .once

      subject.generate!(slip, 'slip.png')
    end
  end
end
