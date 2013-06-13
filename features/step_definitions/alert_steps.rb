When(/^I send an alert:$/) do |data|
	visit new_alert_path

  submit data, 'Send Alert'
end