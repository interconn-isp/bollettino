# frozen_string_literal: true
require 'spec_helper'

module Bollettino
  module Renderer
    RSpec.describe Payee do
      subject { described_class }

      describe '.render' do
        it 'renders the payee' do
          payee = stub(
            account_number: '0123456789',
            name: 'Acme Inc.'
          )

          image = stub

          subject
            .expects(:write_text)
            .times(6)

          subject.render image, payee
        end

        context 'when account_number is longer than 10 characters' do
          it 'raises an error' do
            payee = stub(
            account_number: '01234567891',
            name: 'Acme Inc.'
          )

            image = stub

            expect {
              subject.render image, payee
            }.to raise_error(RenderingError)
          end
        end
      end
    end
  end
end
