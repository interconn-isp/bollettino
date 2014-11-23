# Base rebder
#
# @abstract Subclass and override {.render} to create a renderer
#
# @author Alessandro Desantis <desa.alessandro@gmail.com>
class Bollettino::Renderer
  KERNING_NORMAL = 1

  KERNING_BOX = 17.5
  KERNING_BOX_SMALLER = 17
  KERNING_BOX_SMALLEST = 16

  FONT_SIZE_NORMAL = 30
  FONT_SIZE_SMALL = 25

  # Renders the given model on the image.
  #
  # @param image [MiniMagick::Image]
  # @param model
  #
  # @abstract This method must be overridden by the renderers
  def self.render(image, model)
    raise NotImplementedError
  end

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

  # Rendering error
  #
  # This error is usually raised when some data can't be renderered because
  # it's malformed.
  #
  # @author Alessandro Desantis <desa.alessandro@gmail.com>
  class RenderingError < StandardError
  end
end
