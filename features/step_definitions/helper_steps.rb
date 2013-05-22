Then(/^I should see: (.*)$/) do |words|
  words.split(', ').each do |word|
  	step %Q{I should see "#{word}"}
  end
end

Then(/^I should not see: (.*)$/) do |words|
  words.split(', ').each do |word|
  	step %Q{I should not see "#{word}"}
  end
end