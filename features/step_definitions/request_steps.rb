Given(/^a coming group exist$/) do
  FactoryGirl.create :pending_coming
  FactoryGirl.create :accepted_coming
  FactoryGirl.create :rejected_coming
end

Given(/^a leave group exist$/) do
  FactoryGirl.create :pending_leave
  FactoryGirl.create :accepted_leave
  FactoryGirl.create :rejected_leave
end

Given(/^a ticket group exist$/) do
  FactoryGirl.create :pending_ticket
  FactoryGirl.create :accepted_ticket
  FactoryGirl.create :rejected_ticket
end

Given(/^a vacation group exist$/) do
  FactoryGirl.create :pending_vacation
  FactoryGirl.create :accepted_vacation
  FactoryGirl.create :rejected_vacation
end
