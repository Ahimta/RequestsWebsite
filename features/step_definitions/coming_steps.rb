Given(/(\d+) (\w+)? comings? exists?/) do |quantity, type|
	quantity.to_i.times do |n|
		n += 1

		Coming.create!(reason: "reason#{n}", request: create_request(n, type))
	end	
end