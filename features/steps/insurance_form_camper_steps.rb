When('I fill out all the required fields for the camper') do
    @form_page.fill_form_with_data_vehicle_camper
    @form_page.fill_form_with_data_insurant_camper
    @form_page.fill_form_with_data_product_camper
    @form_page.fill_form_with_data_price_camper
    @form_page.fill_form_with_data_quote_camper
end
