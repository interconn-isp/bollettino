# frozen_string_literal: true

module Bollettino
  # Generator
  #
  # Generates an image from a slip.
  #
  # @author Alessandro Desantis <desa.alessandro@gmail.com>
  class Generator
    attr_reader :options

    # Initializes the generator.
    #
    # @param options [Hash]
    def initialize(options = {})
      @options = options
    end

    # Generates the given slip.
    #
    # @param slip [Bollettino::Slip]
    # @param path [String]
    def generate!(slip, path)
      image = MiniMagick::Image.open(File.expand_path('../../../assets/slip.png', __FILE__))
      Bollettino::Renderer::Slip.render(image, slip)
      image.write path
    end
  end
end
