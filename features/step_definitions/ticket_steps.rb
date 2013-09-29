Given(/(\d+) (\w+)? tickets? exists?/) do |quantity, type|
	quantity.to_i.times do |n|
		n += 1
		
		Ticket.create!(line: "line#{n}", number: "number#{n}",
			request: create_request(n, type))
	end	
end