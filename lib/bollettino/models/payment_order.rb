require 'virtus'

class Bollettino::PaymentOrder
  include Virtus.model

  attribute :numeric_amount, Float
  attribute :text_amount, String
  attribute :reason, String
end
