class Bollettino::Renderer::PaymentOrderRenderer < Bollettino::Renderer
  def self.render(image, payment_order)
    render_numeric_amount(image, payment_order)
    render_text_amount(image, payment_order)
    render_reason(image, payment_order)
  end

  private

  def self.render_numeric_amount(image, payment_order)
    numeric_amount = payment_order.numeric_amount
    numeric_amount = ('%.2f' % numeric_amount).to_s.gsub('.', '')

    numeric_amount_x = 1000 - 35 * numeric_amount.length.to_i

    [[numeric_amount_x, 690], [numeric_amount_x + 1315, 690]].each do |coords|
      write_text(image, coords, numeric_amount, KERNING_BOX)
    end
  end

  def self.render_reason(image, payment_order)
    write_text(image, [90, 475], payment_order.reason[0..46])
    write_text(image, [90, 435], payment_order.reason[47..93])

    write_text(image, [1110, 475], payment_order.reason[0..60])
    write_text(image, [1110, 435], payment_order.reason[61..121])
  end

  def self.render_text_amount(image, payment_order)
    write_text(image, [245, 650], payment_order.text_amount[0..38])
    write_text(image, [1435, 650], payment_order.text_amount[0..44])
  end
end
