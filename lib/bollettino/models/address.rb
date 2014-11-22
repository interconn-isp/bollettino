class Bollettino::Address
  include Virtus.model

  attribute :street, String
  attribute :city, String
  attribute :zip, String
  attribute :state, String
end
