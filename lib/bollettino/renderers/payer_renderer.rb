class Bollettino::Renderer::PayerRenderer < Bollettino::Renderer
  def self.render(image, payer)
    render_name(image, payer)
    render_address(image, payer)
  end

  private

  def self.render_name(image, payer)
    write_text(image, [85, 360], payer.name[0..24].upcase)
    write_text(image, [85, 315], payer.name[25..49].upcase)

    write_text(image, [1508, 375], payer.name[0..22].upcase, KERNING_BOX_SMALLEST)
    write_text(image, [1508, 330], payer.name[22..44].upcase, KERNING_BOX_SMALLEST)
  end

  def self.render_address(image, payer)
    Bollettino::Renderer::AddressRenderer.render(image, payer.address)
  end
end
