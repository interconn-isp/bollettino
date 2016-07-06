# frozen_string_literal: true
module Bollettino
  module Renderer
    RSpec.describe Payee do
      subject { described_class }

      let(:payee) { instance_double('Bollettino::Model::Payee') }

      before(:each) do
        allow(payee).to receive(:account_number).and_return('0123456789')
        allow(payee).to receive(:name).and_return('Acme Inc.')
      end

      describe '.render' do
        let(:image) { instance_double('MiniMagick::Image') }

        it 'renders the payee' do
          expect(subject).to receive(:write_text)
            .exactly(6).times

          subject.render image, payee
        end

        context 'when account_number is longer than 10 characters' do
          before(:each) do
            allow(payee).to receive(:account_number).and_return('01234567891')
          end

          it 'raises an error' do
            expect {
              subject.render image, payee
            }.to raise_error(RenderingError)
          end
        end
      end
    end
  end
end
