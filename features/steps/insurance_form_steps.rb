Dado('que acesso a página do formulário') do
    @form_page = FormPage.new
    @form_page.load
  end
  
  Quando('preencho todos os campos obrigatórios') do
    @form_page.fill_form_with_data_vehicle_auto
    @form_page.fill_form_with_data_insurant_auto
    @form_page.fill_form_with_data_product_auto
    @form_page.fill_form_with_data_price_auto
    @form_page.fill_form_with_data_quote_auto
  end
  Então('o website envia o email de confirmação') do
    @form_page.wait_until_msg_loaded_visible
    expect(@form_page).to have_content 'Sending e-mail success!'
    
  end