When(/^I send an alert:$/) do |data|
	visit new_alert_path

  submit data, 'Send Alert'
end

Given(/^(\d+) alerts? exists?$/) do |quantity|
  1.upto(quantity.to_i) do |n|
    Alert.create! title: "title#{n}", body: "body#{n}"
  end
end
