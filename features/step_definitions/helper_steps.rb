Then(/^I should see: (.*)$/) do |words|
  words.split(', ').each do |word|
  	step %Q{I should see "#{word}"}
  end
end

Then(/^I should not see( the following)?: (.*)$/) do |garbage, words|
  words.split(', ').each do |word|
  	step %Q{I should not see "#{word}"}
  end
end

Then(/^I should see the following: (.*)$/) do |words|
	words.split(', ').each do |word|
		step %Q{I should see "#{word}"}
	end
end

When(/^I destroy all (\w+)$/) do |model|
  eval "#{model.classify}.destroy_all"
end

Then(/^(\w+) model should be empty$/) do |model|
  eval "#{model.classify}.all.should be_empty"
end

When(/^I edit the first (\w+):$/) do |model, data|
  visit eval("edit_#{model}_path(id: 1)")

  submit data, "Edit #{model.capitalize}"
end


def submit(data, button)
  data.rows_hash.each do |field, value|
    fill_in field, with: value
  end

  click_button button
end
