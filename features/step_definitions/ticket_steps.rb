When(/^I request ticket:$/) do |data|
  visit new_ticket_path
  
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Ticket'
end