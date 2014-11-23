class Bollettino::Renderer
  KERNING_NORMAL = 1

  KERNING_BOX = 17.5
  KERNING_BOX_SMALLER = 17
  KERNING_BOX_SMALLEST = 16

  FONT_SIZE_NORMAL = 30
  FONT_SIZE_SMALL = 25

  protected

  def self.write_text(image, coords, text, kerning = KERNING_NORMAL, font_size = FONT_SIZE_NORMAL)
    image.combine_options do |c|
      c.font 'courier'
      c.fill 'black'
      c.pointsize font_size
      c.gravity 'southwest'
      c.kerning kerning
      c.draw %Q[text #{coords.join(',')} "#{text.to_s.upcase.gsub('"', '\"')}"]
    end
  end
end
