class Bollettino::Slip
  include Virtus.model

  attribute :payee, Bollettino::Payee
  attribute :payer, Bollettino::Payer
  attribute :payment_order, Bollettino::PaymentOrder
end
