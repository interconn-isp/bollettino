# frozen_string_literal: true
module Bollettino
  module Model
    # Payee
    #
    # The payee is the party requesting payment. A payee is associated with a
    # postal account.
    #
    # @author Alessandro Desatnis <desa.alessandro@gmail.com>
    class Payee < Base
      # !@attribute [rw] account_number
      #   @return [String] the postal account's number
      attribute :account_number, String

      # !@attribute [rw] name
      #   @return [String] the account holder's name
      attribute :name, String
    end
  end
end
