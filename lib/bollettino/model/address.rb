# frozen_string_literal: true
module Bollettino
  module Model
    # Address
    #
    # @author Alessandro Desatnis <desa.alessandro@gmail.com>
    class Address < Base
      # !@attribute [rw] street
      #   @return [String] the address street
      attribute :street, String

      # !@attribute [rw] zip
      #   @return [String] the address ZIP
      attribute :zip, String

      # !@attribute [rw] location
      #   @return [String] the address location (city, state etc.)
      attribute :location, String
    end
  end
end
