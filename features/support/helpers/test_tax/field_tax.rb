module FieldLibTax
  def fill_tax_name(param)
    fill_in "name", :with => param
  end

  def fill_tax_amount(param)
    fill_in "amount", :with => param
  end

end
