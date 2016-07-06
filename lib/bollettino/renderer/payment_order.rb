# frozen_string_literal: true
module Bollettino
  module Renderer
    class PaymentOrder < Base
      class << self
        def render(image, payment_order)
          render_numeric_amount(image, payment_order)
          render_text_amount(image, payment_order)
          render_reason(image, payment_order)
        end

        private

        def render_numeric_amount(image, payment_order)
          numeric_amount = payment_order.numeric_amount
          numeric_amount = format('%.2f', numeric_amount).delete('.')

          if numeric_amount.length > 7
            fail RenderingError, "Numeric amount can't be longer than 7 total digits"
          end

          numeric_amount_x = 1000 - 35 * numeric_amount.length.to_i

          [[numeric_amount_x, 690], [numeric_amount_x + 1315, 690]].each do |coords|
            write_text(image, coords, numeric_amount, KERNING_BOX)
          end
        end

        def render_reason(image, payment_order)
          write_text(image, [90, 475], payment_order.reason[0..46])
          write_text(image, [90, 435], payment_order.reason[47..93])

          write_text(image, [1110, 475], payment_order.reason[0..60])
          write_text(image, [1110, 435], payment_order.reason[61..121])
        end

        def render_text_amount(image, payment_order)
          write_text(image, [245, 650], payment_order.text_amount[0..38])
          write_text(image, [1435, 650], payment_order.text_amount[0..44])
        end
      end
    end
  end
end
