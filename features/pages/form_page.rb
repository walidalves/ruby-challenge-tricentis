class FormPage < SitePrism::Page
    set_url '/101/index.php'

    ##Initial Page to Form
    element :ini_automobile, '#nav_automobile'
    element :ini_truck, '#nav_truck'
    element :ini_motorcycle, '#nav_motorcycle'
    element :ini_camper, '#nav_camper'
    
 
    ##Vehicle Data Tab
    element :dropdown_make, '#make'
    element :engine_performance, '#engineperformance'
    element :date_manufacture, '#dateofmanufacture'
    element :dropdown_seats, '#numberofseats'
    element :dropdown_fuel, '#fuel'

    element :payload, '#payload'
    element :total_weight, '#totalweight'

    element :list_price, '#listprice'
    element :annual_mileag, '#annualmileage'
    element :btn_next_todata, '#nextenterinsurantdata'

    ##Insurant Data Tab
    element :first_name, '#firstname'
    element :last_name, '#lastname'
    element :date_birth, '#birthdate'
    element :dropdown_country, '#country'
    element :zip_code, '#zipcode'
    element :dropdown_occupation, '#occupation'
    element :radio_hobbie, '#insurance-form input#bungeejumping'
    element :btn_next_toproduct, '#nextenterproductdata'

    ##Product Data Tab
    element :date_start, '#startdate'
    element :dropdown_insurance, '#insurancesum'
    element :dropdown_merit, '#meritrating'
    element :dropdown_damage, '#damageinsurance'
    element :radio_optional, '#EuroProtection'
    element :dropdown_courtesy, '#courtesycar'
    element :btn_next_toprice, '#nextselectpriceoption'

    ##Price Option
    element :radio_price, '#selectsilver'
    element :btn_next_toquote, '#nextsendquote'

    ##Send Quote
    element :email, '#email'
    element :username, '#username'
    element :password, '#password'
    element :confirm_password, '#confirmpassword'
    element :btn_send_email, '#sendemail'
    element :msg_loaded, 'body > div.sweet-alert.showSweetAlert.visible > h2'

    def fill_form_with_data_vehicle_auto
        ini_automobile.click
        select 'BMW', from: 'make'
        engine_performance.set '25'
        date_manufacture.set '05/05/2022'
        select '5', from: 'numberofseats'
        select 'Petrol', from: 'fuel'
        list_price.set '25000'
        annual_mileag.set '3000'
        btn_next_todata.click
    end

    def fill_form_with_data_insurant_auto
        first_name.set 'Walidson'
        last_name.set 'Arnouschwarzenegger'
        date_birth.set '04/23/1977'
        select 'Brazil', from: 'country'
        zip_code.set '1234566'
        select 'Farmer', from: 'occupation'
        checkbox_input = find('#bungeejumping')
        page.execute_script("arguments[0].click();", checkbox_input)
        btn_next_toproduct.click
    end

    def fill_form_with_data_product_auto
        date_start.set '05/31/2026'
        select '25.000.000,00', from: 'insurancesum'
        select 'Bonus 2', from: 'meritrating'
        select 'Partial Coverage', from: 'damageinsurance'
        checkbox_input = find('#EuroProtection')
        page.execute_script("arguments[0].click();", checkbox_input)
        select 'Yes', from: 'courtesycar'
        btn_next_toprice.click

    end
    
    def fill_form_with_data_price_auto
        checkbox_input = find('#selectsilver')
        page.execute_script("arguments[0].click();", checkbox_input)
        btn_next_toquote.click
    end
    
    def fill_form_with_data_quote_auto
        email.set 'teste@hotmail.com'
        username.set 'GoldRoger'
        password.set 'Teste159'
        confirm_password.set 'Teste159'
        btn_send_email.click
    end
end
