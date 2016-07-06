# frozen_string_literal: true
module Bollettino
  module Renderer
    class Payee < Base
      class << self
        def render(image, payee)
          render_account_number(image, payee)
          render_name(image, payee)
        end

        private

        def render_account_number(image, payee)
          if payee.account_number.length > 10
            fail RenderingError, "Account number can't be longer than 10 characters"
          end

          [[265, 695], [1310, 695]].each do |coords|
            write_text(image, coords, payee.account_number, KERNING_BOX)
          end
        end

        def render_name(image, payee)
          write_text(image, [90, 585], payee.name[0..46])
          write_text(image, [90, 545], payee.name[47..93])

          write_text(image, [1105, 590], payee.name[0..33], KERNING_BOX_SMALLER)
          write_text(image, [1105, 545], payee.name[34..67], KERNING_BOX_SMALLER)
        end
      end
    end
  end
end
