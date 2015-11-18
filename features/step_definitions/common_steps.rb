Given /^I am on the blog homepage$/ do
	visit("/posts")
end

And /^there are already (\d) posts$/ do |count|
	count.to_i.times do |n|
		Post.create!({ :title => "Title #{n}", :content => "Content #{n}", :post_time => Time.now })
	end
end

And /^there is a post with title "(.*?)" and content "(.*?)"$/ do |ttl, con|
	Post.create!({ :title => "Title #{ttl}", :content => "Content #{con}", :post_time => Time.now })
end

And /^there is a post titled with "(.*?)" and content with "(.*?)"$/ do |ttl1, con1|
	@title = ttl1
	Post.create!({ :title => "Title #{ttl1}", :content => "Content #{con1}", :post_time => Time.now })
end