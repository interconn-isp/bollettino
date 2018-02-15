# frozen_string_literal: true

module Bollettino
  module Renderer
    # Rendering error
    #
    # This error is usually raised when some data can't be renderered because
    # it's malformed.
    #
    # @author Alessandro Desantis <desa.alessandro@gmail.com>
    class RenderingError < StandardError
    end
  end
end
