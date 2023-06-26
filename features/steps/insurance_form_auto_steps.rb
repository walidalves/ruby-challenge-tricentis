Given('I access the form page') do
    @form_page = FormPage.new
    @form_page.load
end
  
When('I fill out all the required fields for the automobile') do
    @form_page.fill_form_with_data_vehicle_auto
    @form_page.fill_form_with_data_insurant_auto
    @form_page.fill_form_with_data_product_auto
    @form_page.fill_form_with_data_price_auto
    @form_page.fill_form_with_data_quote_auto
end

Then('the website sends a confirmation email') do
    @form_page.wait_until_msg_loaded_visible
    expect(@form_page).to have_content 'Sending e-mail success!'
    @form_page.confirm_end_form
end
