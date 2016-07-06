# frozen_string_literal: true
module Bollettino
  module Model
    # Payment order
    #
    # A payment order is a request for payment from the payee to the payer.
    #
    # @author Alessandro Desatnis <desa.alessandro@gmail.com>
    class PaymentOrder < Base
      # !@attribute [rw] numeric amount
      #   @return [Float] the payment's amount
      attribute :numeric_amount, Float

      # !@attribute [rw] text amount
      #   @return [String] the payment's amount in letters
      attribute :text_amount, String

      # !@attribute [rw] reason
      #   @return [String] the reason for the payment
      attribute :reason, String
    end
  end
end
