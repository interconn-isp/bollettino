class Bollettino::Renderer::SlipRenderer < Bollettino::Renderer
  def self.render(image, slip)
    render_payment_order(image, slip)
    render_payee(image, slip)
    render_payer(image, slip)
  end

  private

  def self.render_payment_order(image, slip)
    Bollettino::Renderer::PaymentOrderRenderer.render(image, slip.payment_order)
  end

  def self.render_payee(image, slip)
    Bollettino::Renderer::PayeeRenderer.render(image, slip.payee)
  end

  def self.render_payer(image, slip)
    Bollettino::Renderer::PayerRenderer.render(image, slip.payer)
  end
end
