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
