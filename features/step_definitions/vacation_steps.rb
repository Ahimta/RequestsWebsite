Given(/(\d+) (\w+)? vacations? exists?/) do |quantity, type|
	quantity.to_i.times do |n|
		n += 1

		Vacation.create!(duration: "#{n}1", from: "#{n}2", to: "#{n}3",
			request: create_request(n, type))
	end	
end