module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the new leave page$/ then new_leafe_path
    when /^the new decision page$/ then new_request_decision_path(Request.first)

    when /^the first decision page$/ then request_decision_path(request_id: Request.first.id, id: Decision.first.id)
		
		when /^the first (\w+) page$/ then eval "#{$1}_path(#{$1.titleize}.first)"
		when /^the second (\w+) page$/ then eval "#{$1}_path(#{$1.titleize}.all[1])"
    when /^the third (\w+) page$/ then eval "#{$1}_path(#{$1.titleize}.all[2])"
    when /^the fourth (\w+) page$/ then eval "#{$1}_path(#{$1.titleize}.all[3])"
		
  when /the home\s?page/ then home_page_path

    # the following are examples using path_to_pickle

    when /^#{capture_model}(?:'s)? page$/                           # eg. the forum's page
      path_to_pickle $1

    when /^#{capture_model}(?:'s)? #{capture_model}(?:'s)? page$/   # eg. the forum's post's page
      path_to_pickle $1, $2

    when /^#{capture_model}(?:'s)? #{capture_model}'s (.+?) page$/  # eg. the forum's post's comments page
      path_to_pickle $1, $2, :extra => $3                           #  or the forum's post's edit page

    when /^#{capture_model}(?:'s)? (.+?) page$/                     # eg. the forum's posts page
      path_to_pickle $1, :extra => $2                               #  or the forum's edit page


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)