When /^I select the post$/ do
	visit("/posts")
	click_on "Show"
end

When /^I click "Delete Post"$/ do
	click_on "Destroy"
end

Then /^the post should be deleted$/ do
	page.should have_no_content(@title)
end