When /^I edit this post$/ do
	#if page.has_title?("Dummy post") and page.has_content?("Dummy content")
	click_on("Edit")
end

When /^I update title to "(.*?)" and content to "(.*?)"$/ do |title, content|
	@title = title
	fill_in "Title", :with => title
	fill_in "Content", :with => content
	click_on "Update Post"
end

Then /^I can see it has been updated$/ do
	page.should have_content(@title)
end
