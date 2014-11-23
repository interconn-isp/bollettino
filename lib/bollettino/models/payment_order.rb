# Payment order
#
# A payment order is a request for payment from the payee to the payer.
#
# @author Alessandro Desatnis <desa.alessandro@gmail.com>
class Bollettino::PaymentOrder
  include Virtus.model

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
