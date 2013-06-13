When(/^I send an alert:$/) do |data|
	visit new_alert_path
	
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button 'Send Alert'
end

When(/^I edit the first alert:$/) do |data|
  visit edit_alert_path(id: 1)

  submit data, 'Edit Alert'

  # data.rows_hash.each do |field, value|
  # 	fill_in field, with: value
  # end
  
  # click_button 'Edit Alert'
end
