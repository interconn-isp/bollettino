# frozen_string_literal: true

module Bollettino
  module Renderer
    class Payer < Base
      class << self
        def render(image, payer)
          render_name(image, payer)
          render_address(image, payer)
        end

        private

        def render_name(image, payer)
          write_text(image, [85, 360], payer.name[0..24])
          write_text(image, [85, 315], payer.name[25..49])

          write_text(image, [1508, 375], payer.name[0..22], KERNING_BOX_SMALLEST)
          write_text(image, [1508, 330], payer.name[23..45], KERNING_BOX_SMALLEST)
        end

        def render_address(image, payer)
          Address.render(image, payer.address)
        end
      end
    end
  end
end
