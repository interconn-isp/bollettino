# frozen_string_literal: true
module Bollettino
  module Model
    # Payer
    #
    # The payer is the party making the payment.
    #
    # @author Alessandro Desatnis <desa.alessandro@gmail.com>
    class Payer < Base
      # !@attribute [rw] name
      #   @return [String] the payer's full name
      attribute :name, String

      # !@attribute [rw] address
      #   @return [Address] the payer's address
      attribute :address, Address
    end
  end
end
