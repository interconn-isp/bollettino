# frozen_string_literal: true

require 'virtus'
require 'mini_magick'

require 'bollettino/version'

require 'bollettino/model/base'
require 'bollettino/model/address'
require 'bollettino/model/payee'
require 'bollettino/model/payer'
require 'bollettino/model/payment_order'
require 'bollettino/model/slip'

require 'bollettino/renderer/base'
require 'bollettino/renderer/errors'
require 'bollettino/renderer/address'
require 'bollettino/renderer/payer'
require 'bollettino/renderer/payee'
require 'bollettino/renderer/payment_order'
require 'bollettino/renderer/slip'

require 'bollettino/generator'

module Bollettino
end
