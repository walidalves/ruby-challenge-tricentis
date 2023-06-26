module DataHelper

	# Last Button
	def confirm_end_form
        btn_ok_end.click 
    end
	# Generate random birthdates between 18 to 70 years old.
	def generate_random_date_of_birth
		start_date = Date.today - 70*365 # 70 years ago
		end_date = Date.today - 18*365  # 18 years ago
		random_date = Faker::Date.between(from: start_date, to: end_date)
		formatted_date = random_date.strftime('%m/%d/%Y')
		return formatted_date
	end

	# Generate random future date for start date
	def generate_random_future_date
		current_date = Date.today
		future_date = current_date.next_month
		random_date = Faker::Date.between(from: future_date, to: future_date + 30)
		formatted_date = random_date.strftime('%m/%d/%Y')
		return formatted_date
	end

	# Generate random past date for start date
	def generate_random_past_date
		end_date = Date.today
		start_date = end_date - 200
		random_date = Faker::Date.backward(days: (end_date - start_date).to_i)
		formatted_date = random_date.strftime('%m/%d/%Y')
		return formatted_date
	end

	# Generate random e-mail
	def generate_unique_email
		username = Faker::Internet.unique.username(specifier: 8)
		username = username.gsub(/['"]/,'')
		email = "#{username}@#{'example.com'}"
		return email
	end
end