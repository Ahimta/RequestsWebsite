When(/^I request a leave:$/) do |data|
	visit new_leafe_path
	
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Request Leave'
end