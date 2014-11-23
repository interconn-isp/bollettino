class Bollettino::Renderer::PayeeRenderer < Bollettino::Renderer
  def self.render(image, payee)
    render_account_number(image, payee)
    render_name(image, payee)
  end

  private

  def self.render_account_number(image, payee)
    [[265, 695], [1310, 695]].each do |coords|
      write_text(image, coords, payee.account_number, KERNING_BOX)
    end
  end

  def self.render_name(image, payee)
    write_text(image, [90, 585], payee.name[0..46])
    write_text(image, [90, 545], payee.name[47..93])

    write_text(image, [1105, 590], payee.name[0..33], KERNING_BOX_SMALLER)
    write_text(image, [1105, 545], payee.name[34..67], KERNING_BOX_SMALLER)
  end
end
