class Bollettino::Generator
  attr_reader :options

  def initialize(options = {})
    @options = options
  end

  def generate!(slip, path)
    image = MiniMagick::Image.open(File.expand_path('../../../assets/slip.png', __FILE__))
    Bollettino::Renderer::SlipRenderer.render(image, slip)
    image.write path
  end
end
