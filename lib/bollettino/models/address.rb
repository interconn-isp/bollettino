class Bollettino::Address
  include Virtus.model

  attribute :street, String
  attribute :zip, String
  attribute :location, String
end
