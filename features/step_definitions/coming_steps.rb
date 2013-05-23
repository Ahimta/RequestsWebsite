When(/^I request a coming:$/) do |data|
	visit new_coming_path
	
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Coming'
end