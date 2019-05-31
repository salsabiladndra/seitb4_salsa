module ButtonLibTax
  def click_button_create_tax
    click_button ("Create Tax")
  end

  def click_button_save_tax_single_outlet
    click_button("Save")
  end

  def create_tax_single_outlet(param)
    click_button_create_tax
    top_loading_bar
    fill_tax_name(param[:name])
    fill_tax_amount(param[:amount])
    click_button_save_tax_single_outlet
  end

end
