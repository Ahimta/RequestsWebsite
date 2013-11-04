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
  visit eval("edit_#{model.downcase}_path(id: 1)")

  submit data, "Edit #{model.capitalize}"
end

When(/^I visit the first (\w+) edit page$/) do |model|
  visit eval("edit_#{model.downcase}_path(#{model.classify}.first)")
end

When(/^I visit the new (\w+) page$/) do |model|
  visit eval("new_#{model.downcase}_path")
end

When(/^I fill in:$/) do |data|
  data.rows_hash.each { |field, value| fill_in field, with: value }
end



def submit(data, button)
  data.rows_hash.each do |field, value|
    fill_in field, with: value
  end

  click_button button
end

def create_request(n, type)
    applicant = Applicant.where(name: "applicant#{n}", user_id: create_user(n).id).
      first_or_initialize

    request   = Request.create!(applicant: applicant, accepted: case type
      when 'accepted' then true
      when 'rejected' then false
      else nil
      end)

    request
end

def create_user(n)
  location  = Location.new name: "location#{n}"
  user      = User.where(username: "username#{n}").first

  user or User.create!(username: "username#{n}",
    password: "password#{n}", location: location)
end
