  Quando('preencho todos os campos obrigatórios do caminhão') do
    @form_page.fill_form_with_data_vehicle_truck
    @form_page.fill_form_with_data_insurant_truck
    @form_page.fill_form_with_data_product_truck
    @form_page.fill_form_with_data_price_truck
    @form_page.fill_form_with_data_quote_truck
  end
