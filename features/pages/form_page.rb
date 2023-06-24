require_relative 'data_helper'

class FormPage < SitePrism::Page
    include DataHelper
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
    element :btn_ok_end, '.sa-confirm-button-container button.confirm'

    #Automobile flow
    def fill_form_with_data_vehicle_auto
        ini_automobile.click
        select 'BMW', from: 'make'
        engine_performance.set Faker::Base.rand(1..2000).to_s
        date_manufacture.set generate_random_past_date
        select '5', from: 'numberofseats'
        select 'Petrol', from: 'fuel'
        list_price.set Faker::Base.rand(500..100000).to_s
        annual_mileag.set Faker::Base.rand(100..100000).to_s
        btn_next_todata.click
    end

    def fill_form_with_data_insurant_auto
        first_name.set Faker::Name.first_name
        last_name.set Faker::Name.last_name
        date_birth.set generate_random_date_of_birth
        select 'Brazil', from: 'country'
        zip_code.set Faker::Base.numerify('######')
        select 'Farmer', from: 'occupation'
        checkbox_input = find('#bungeejumping')
        page.execute_script("arguments[0].click();", checkbox_input)
        btn_next_toproduct.click
    end

    def fill_form_with_data_product_auto
        date_start.set generate_random_future_date
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
        email.set Faker::Internet.email
        username.set 'GoldRoger'
        password.set 'Teste159'
        confirm_password.set 'Teste159'
        btn_send_email.click
    end

    #Truck flow
    def fill_form_with_data_vehicle_truck
        ini_truck.click
        select 'Ford', from: 'make'
        engine_performance.set Faker::Base.rand(1..2000).to_s
        date_manufacture.set generate_random_past_date
        select '5', from: 'numberofseats'
        select 'Petrol', from: 'fuel'
        payload.set Faker::Base.rand(1..1000).to_s
        total_weight.set Faker::Base.rand(100..50000).to_s       
        list_price.set Faker::Base.rand(500..100000).to_s
        annual_mileag.set Faker::Base.rand(100..100000).to_s
        btn_next_todata.click
    end

    def fill_form_with_data_insurant_truck
        first_name.set Faker::Name.first_name
        last_name.set Faker::Name.last_name
        date_birth.set generate_random_date_of_birth
        select 'Brazil', from: 'country'
        zip_code.set Faker::Base.numerify('######')
        select 'Farmer', from: 'occupation'
        checkbox_input = find('#bungeejumping')
        page.execute_script("arguments[0].click();", checkbox_input)
        btn_next_toproduct.click
    end

    def fill_form_with_data_product_truck
        date_start.set generate_random_future_date
        select '25.000.000,00', from: 'insurancesum'
        select 'Partial Coverage', from: 'damageinsurance'
        checkbox_input = find('#EuroProtection')
        page.execute_script("arguments[0].click();", checkbox_input)
        btn_next_toprice.click
    end
    
    def fill_form_with_data_price_truck
        checkbox_input = find('#selectsilver')
        page.execute_script("arguments[0].click();", checkbox_input)
        btn_next_toquote.click
    end
    
    def fill_form_with_data_quote_truck
        email.set Faker::Internet.email
        username.set 'GoldRoger'
        password.set 'Teste159'
        confirm_password.set 'Teste159'
        btn_send_email.click
    end











    def confirm_end_form
        btn_ok_end.click 
    end


    
end
