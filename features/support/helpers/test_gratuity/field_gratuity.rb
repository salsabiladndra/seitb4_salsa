module FieldLibGratuity
  def fill_gratuity_name(param)
    fill_in "name", :with => param
  end

  def fill_gratutiy_amount(param)
    fill_in "amount", :with => param
  end

end
