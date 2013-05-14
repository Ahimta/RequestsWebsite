When(/^I request a vacation:$/) do |data|
  visit new_vacation_path
  
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Vacation'
end