class FormPage < SitePrism::Page
    set_url '/101/app.php'

    ##Vehicle Data Tab
    element :dropdown_make, '#make'
    element :engine_performance, '#engineperformance'
    element :date_manufacture, '#dateofmanufacture'
    element :dropdown_seats, '#numberofseats'
    element :dropdown_fuel, '#fuel'
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
    element :send_email, '#sendemail'
    element :msg_success, 'body > div.sweet-alert.showSweetAlert.visible > h2'

    def fill_form_with_data_vehicle
        select 'BMW', from: 'make'
        engine_performance.set '25'
        date_manufacture.set '05/05/2022'
        select '5', from: 'numberofseats'
        select 'Petrol', from: 'fuel'
        list_price.set '25555'
        annual_mileag.set '3000'
        btn_next_todata.click
    end

    def fill_form_with_data_insurant
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


    def fill_form_with_data_product

    end
    
    def fill_form_with_data_price

    end
    
    def fill_form_with_data_quote

    end
end
