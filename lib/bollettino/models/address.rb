# Address
#
# @author Alessandro Desatnis <desa.alessandro@gmail.com>
class Bollettino::Address
  include Virtus.model

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
