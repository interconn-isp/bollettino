class Bollettino::Payer
  include Virtus.model

  attribute :name, String
  attribute :address, Bollettino::Address
end
