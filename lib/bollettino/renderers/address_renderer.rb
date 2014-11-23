class Bollettino::Renderer::AddressRenderer < Bollettino::Renderer
  def self.render(image, address)
    render_street(image, address)
    render_zip(image, address)
    render_location(image, address)
  end

  private

  def self.render_street(image, address)
    write_text(image, [85, 267], address.street[0..29], KERNING_NORMAL, FONT_SIZE_SMALL)
    write_text(image, [1508, 267], address.street[0..22], KERNING_BOX_SMALLEST)
  end

  def self.render_zip(image, address)
    write_text(image, [85, 223], address.zip[0..29], KERNING_NORMAL, FONT_SIZE_SMALL)
    write_text(image, [1508, 200], address.zip[0..4], KERNING_BOX_SMALLEST)
  end

  def self.render_location(image, address)
    write_text(image, [85, 180], address.location[0..29], KERNING_NORMAL, FONT_SIZE_SMALL)
    write_text(image, [1713, 200], address.location[0..16], KERNING_BOX_SMALLEST)
  end
end
