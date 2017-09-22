Given(/^I have an article with title "([^"]*)" and content "([^"]*)"$/) do |title, content|
  article = Article.new(id: 2)
  article.title = title
  article.content = content
  article.save
end
