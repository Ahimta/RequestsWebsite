When(/^I request a (\w+):$/) do |model, data|
  visit eval("new_#{model.pluralize.singularize}_path")

  submit data, "Request #{model.titleize}"
end

Then(/^all request models should be empty$/) do
  are_empty = Request.all.empty? && Coming.all.empty? && Leave.all.empty? && Ticket.all.empty? && Vacation.all.empty?
  
  are_empty.should be_true
end

Then(/^there should be only one applicant$/) { Applicant.count.should == 1 }
