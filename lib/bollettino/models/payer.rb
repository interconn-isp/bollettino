# Payer
#
# The payer is the party making the payment.
#
# @author Alessandro Desatnis <desa.alessandro@gmail.com>
class Bollettino::Payer
  include Virtus.model

  # !@attribute [rw] name
  #   @return [String] the payer's full name
  attribute :name, String

  # !@attribute [rw] address
  #   @return [Bollettino::Address] the payer's address
  attribute :address, Bollettino::Address
end
