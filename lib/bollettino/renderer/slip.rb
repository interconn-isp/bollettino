# frozen_string_literal: true

module Bollettino
  module Renderer
    class Slip < Base
      class << self
        def render(image, slip)
          render_payment_order(image, slip)
          render_payee(image, slip)
          render_payer(image, slip)
        end

        private

        def render_payment_order(image, slip)
          PaymentOrder.render(image, slip.payment_order)
        end

        def render_payee(image, slip)
          Payee.render(image, slip.payee)
        end

        def render_payer(image, slip)
          Payer.render(image, slip.payer)
        end
      end
    end
  end
end
