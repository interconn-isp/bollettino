# Payee
#
# The payee is the party requesting payment. A payee is associated with a
# postal account.
#
# @author Alessandro Desatnis <desa.alessandro@gmail.com>
class Bollettino::Payee
  include Virtus.model

  # !@attribute [rw] account_number
  #   @return [String] the postal account's number
  attribute :account_number, String

  # !@attribute [rw] name
  #   @return [String] the account holder's name
  attribute :name, String
end
