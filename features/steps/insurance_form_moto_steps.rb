Quando('preencho todos os campos obrigatórios da motorcycle') do
    @form_page.fill_form_with_data_vehicle_moto
    @form_page.fill_form_with_data_insurant_moto
    @form_page.fill_form_with_data_product_moto
    @form_page.fill_form_with_data_price_moto
    @form_page.fill_form_with_data_quote_moto
end
