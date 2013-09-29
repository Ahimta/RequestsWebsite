Given(/(\d+) (\w+)? leaves? exists?/) do |quantity, type|
	quantity.to_i.times do |n|
		n += 1

		Leave.create!(reason: "reason#{n}", request: create_request(n, type))
	end	
end