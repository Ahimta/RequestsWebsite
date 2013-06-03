When(/^I request a coming:$/) do |data|
	visit new_coming_path
	
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Coming'
end

When(/^I request a leave:$/) do |data|
	visit new_leafe_path
	
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Leave'
end

When(/^I request a ticket:$/) do |data|
  visit new_ticket_path
  
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Ticket'
end

When(/^I request a vacation:$/) do |data|
  visit new_vacation_path
  
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Vacation'
end

When(/^I destroy all requests$/) do
  Request.destroy_all
end

Then(/^all request models should be empty$/) do
  are_empty = Request.all.empty? && Coming.all.empty? && Leave.all.empty? && Ticket.all.empty? && Vacation.all.empty?
  
  are_empty.should be_true
end