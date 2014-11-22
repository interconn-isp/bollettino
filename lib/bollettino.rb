require 'virtus'
require 'mini_magick'

require 'bollettino/version'

require 'bollettino/models/address'
require 'bollettino/models/payee'
require 'bollettino/models/payer'
require 'bollettino/models/payment_order'
require 'bollettino/models/slip'

require 'bollettino/renderer'

require 'bollettino/renderers/address_renderer'
require 'bollettino/renderers/payer_renderer'
require 'bollettino/renderers/payee_renderer'
require 'bollettino/renderers/payment_order_renderer'
require 'bollettino/renderers/slip_renderer'

require 'bollettino/generator'

module Bollettino
end
