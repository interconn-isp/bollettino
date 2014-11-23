# Slip
#
# A slip is just the composition of a Payee, a Payer and a PaymentOrder. It is
# passed to {#Bollettino::Generator} to create the final image.
#
# @author Alessandro Desatnis <desa.alessandro@gmail.com>
class Bollettino::Slip
  include Virtus.model

  # !@attribute [rw] payee
  #   @return [Bollettino::Payee] the payee
  attribute :payee, Bollettino::Payee

  # !@attribute [rw] payer
  #   @return [Bollettino::Payer] the payer
  attribute :payer, Bollettino::Payer

  # !@attribute [rw] payment order
  #   @return [Bollettino::PaymentOrder] the payment order
  attribute :payment_order, Bollettino::PaymentOrder
end
