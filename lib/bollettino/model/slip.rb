# frozen_string_literal: true

module Bollettino
  module Model
    # Slip
    #
    # A slip is just the composition of a Payee, a Payer and a PaymentOrder. It is
    # passed to {#Bollettino::Generator} to create the final image.
    #
    # @author Alessandro Desatnis <desa.alessandro@gmail.com>
    class Slip < Base
      # !@attribute [rw] payee
      #   @return [Payee] the payee
      attribute :payee, Payee

      # !@attribute [rw] payer
      #   @return [Payer] the payer
      attribute :payer, Payer

      # !@attribute [rw] payment order
      #   @return [PaymentOrder] the payment order
      attribute :payment_order, PaymentOrder
    end
  end
end
