require_relative 'helpers/global_helper'
require_relative 'helpers/automation_helper'
require_relative 'helpers/wait_for_ajax_helper'
require_relative 'helpers/checkout_helper'
require_relative 'helpers/test_gratuity/button_gratuity'
require_relative 'helpers/test_gratuity/field_gratuity'
require_relative 'helpers/test_tax/field_tax'
require_relative 'helpers/test_tax/button_tax'

module Helper
  include AutomationHelper
  include CustomWorld
  include WaitForAjax
  include CheckoutHelper
  include FieldLibGratuity
  include ButtonLibGratuity
  include ButtonLibTax
  include FieldLibTax
end


World(Helper)
