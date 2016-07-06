# frozen_string_literal: true
module Bollettino
  module Renderer
    # Base renderer
    #
    # @abstract Subclass and override {.render} to create a renderer
    #
    # @author Alessandro Desantis <desa.alessandro@gmail.com>
    class Base
      class << self
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
        def render(_image, _model)
          fail NotImplementedError
        end

        protected

        def write_text(image, coords, text, kerning = KERNING_NORMAL, font_size = FONT_SIZE_NORMAL)
          image.combine_options do |c|
            c.font 'courier'
            c.fill 'black'
            c.pointsize font_size
            c.gravity 'southwest'
            c.kerning kerning
            c.draw %(text #{coords.join(',')} "#{text.to_s.upcase.gsub('"', '\"')}")
          end
        end
      end
    end
  end
end
