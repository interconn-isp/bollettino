class Bollettino::Payee
  include Virtus.model

  attribute :account_number, String
  attribute :name, String
end
