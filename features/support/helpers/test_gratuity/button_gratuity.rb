module ButtonLibGratuity
  def click_button_create_gratuity
    click_button ("Create Gratuity")
  end

  def click_button_save_gratuity_single_outlet
    click_button("Save")
  end

  def create_gratuity_single_outlet(param)
    click_button_create_gratuity
    top_loading_bar
    fill_gratuity_name(param[:name])
    fill_gratutiy_amount(param[:amount])
    click_button_save_gratuity_single_outlet
  end

end
