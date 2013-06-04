When(/^I request a (\w+):$/) do |model, data|
  visit eval("new_#{model.pluralize.singularize}_path")
  
  data.rows_hash.each do |field, value|
  	fill_in field, with: value
  end
  
  click_button "Request #{model.titleize}"
end

When(/^I destroy all requests$/) do
  Request.destroy_all
end

Then(/^all request models should be empty$/) do
  are_empty = Request.all.empty? && Coming.all.empty? && Leave.all.empty? && Ticket.all.empty? && Vacation.all.empty?
  
  are_empty.should be_true
end