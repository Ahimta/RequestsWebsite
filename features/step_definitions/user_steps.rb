When(/^I register a user:$/) do |user|
  visit new_user_path
  
  user.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Register User'
end