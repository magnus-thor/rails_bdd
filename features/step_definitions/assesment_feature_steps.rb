Given(/^the following articles exist$/) do |table|
  table.hashes.each do |table|
    Article.create!(table)
  end
end
